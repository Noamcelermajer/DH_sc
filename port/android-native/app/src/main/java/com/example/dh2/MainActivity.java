package com.example.dh2;
import android.app.Activity;
import android.graphics.Color;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.opengl.GLSurfaceView;
import android.os.Bundle;
import android.content.Intent;
import android.content.Context;
import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.MotionEvent;
import android.view.Gravity;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import android.widget.*;
import java.util.Arrays;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

public final class MainActivity extends Activity {
    private GLSurfaceView surface;
    private TextView status;
    private String[] assets=new String[0];
    private volatile int selected;
    private volatile boolean ready;
    private MovementControl movement;
    private Button attack;
    private TextView vitals;
    private volatile String loadedAsset;
    private volatile String baseReport;
    private volatile boolean pendingActorCommand;
    private volatile boolean enemyAi=true;
    private volatile int inspectionTimeMs=-1;
    private int metadataSlot=-1;
    private boolean inspectionMode;
    private int debugLevelRow=-1;
    private FrontAudio frontAudio;
    private volatile IntroCinematicView introCinematic;
    private boolean frontMenuReady;
    private boolean titleMusicStarted;
    private int menuGameplaySlot=-1;
    private volatile boolean attackDisplayPending;
    private BroadcastReceiver debugAttackReceiver;
    @Override public void onCreate(Bundle state) {
        setTheme(android.R.style.Theme_Material_NoActionBar);super.onCreate(state);
        frontAudio=new FrontAudio(this);
        enemyAi=state!=null?state.getBoolean("enemyAi",true):getIntent().getBooleanExtra("enemy_ai",true);
        inspectionTimeMs=state!=null?state.getInt("inspectionTimeMs",-1):getIntent().getIntExtra("time_ms",-1);
        menuGameplaySlot=state!=null?state.getInt("menuGameplaySlot",-1):-1;
        boolean debugBuild=(getApplicationInfo().flags&ApplicationInfo.FLAG_DEBUGGABLE)!=0;
        debugLevelRow=debugBuild?getIntent().getIntExtra("debug_level_row",-1):-1;
        if(debugLevelRow!=-1&&debugLevelRow!=23){Log.w("DH2Native","Ignoring unsupported debug LevelList row "+debugLevelRow);debugLevelRow=-1;}
        if(debugLevelRow==23)Log.i("DH2Native","Debug LevelList row override armed | row 23 | profile save unchanged");
        inspectionMode=getIntent().hasExtra("world")||getIntent().hasExtra("model")||getIntent().hasExtra("texture");
        boolean resumeOpeningCinematic=state!=null&&state.getBoolean("openingCinematicPending",false);
        int openingCinematicPositionMs=state!=null?state.getInt("openingCinematicPositionMs",0):0;
        boolean playOpeningCinematic=!inspectionMode&&(state==null||resumeOpeningCinematic)&&!getIntent().getBooleanExtra("skip_intro",false);
        if(!inspectionMode){
            setRequestedOrientation(android.content.pm.ActivityInfo.SCREEN_ORIENTATION_SENSOR_LANDSCAPE);
            // Apply edge-to-edge before the first layout so the startup movie,
            // menu stage, and GL surface agree on the same drawable bounds.
            configureImmersiveLandscapeWindow();
        }
        if(Build.VERSION.SDK_INT>=33)getOnBackInvokedDispatcher().registerOnBackInvokedCallback(android.window.OnBackInvokedDispatcher.PRIORITY_DEFAULT,this::handleBack);
        metadataSlot=state!=null?state.getInt("metadataSlot",-1):getIntent().getIntExtra("profile_slot",-1);
        LinearLayout layout=new LinearLayout(this);layout.setOrientation(LinearLayout.VERTICAL);
        layout.setBackgroundColor(Color.rgb(24,27,32));
        if(inspectionMode)layout.setOnApplyWindowInsetsListener((view,insets)->{
            if(android.os.Build.VERSION.SDK_INT>=30){
                android.graphics.Insets bars=insets.getInsets(android.view.WindowInsets.Type.systemBars());
                view.setPadding(bars.left,bars.top,bars.right,bars.bottom);
            }else view.setPadding(insets.getSystemWindowInsetLeft(),insets.getSystemWindowInsetTop(),insets.getSystemWindowInsetRight(),insets.getSystemWindowInsetBottom());
            return insets;
        });
        TextView title=new TextView(this);title.setText("Dungeon Hunter 2 - Native 3D source");
        title.setTextColor(Color.WHITE);title.setTextSize(18);title.setPadding(16,12,16,8);layout.addView(title);
        status=new TextView(this);status.setTextColor(Color.rgb(210,220,230));status.setPadding(16,8,16,8);
        status.setText(NativeBridge.buildInfo());
        try{
            String[] textures=getAssets().list("textures"),models=getAssets().list("models"),worlds=getAssets().list("worlds");
            Arrays.sort(textures);Arrays.sort(models);java.util.ArrayList<String> names=new java.util.ArrayList<>();
            names.add("ui/original-main-menu");
            for(String name:worlds)if(name.endsWith(".dwld"))names.add("worlds/"+name);
            for(String name:models)names.add("models/"+name);
            for(String name:textures)names.add("textures/"+name);assets=names.toArray(new String[0]);
        }
        catch(Exception e){Log.e("DH2Native","Asset listing failed",e);status.setText(e.toString());}
        String requested=state!=null?state.getString("asset"):null;
        pendingActorCommand=state!=null?state.getBoolean("pendingPlayerAttack",false):getIntent().getBooleanExtra("player_attack",false);
        if(requested==null&&getIntent().getStringExtra("model")!=null)requested="models/"+getIntent().getStringExtra("model");
        if(requested==null&&getIntent().getStringExtra("texture")!=null)requested="textures/"+getIntent().getStringExtra("texture");
        if(requested==null&&getIntent().getStringExtra("world")!=null)requested="worlds/"+getIntent().getStringExtra("world");
        if(requested!=null){for(int i=0;i<assets.length;i++)if(assets[i].equals(requested))selected=i;}
        Spinner picker=new Spinner(this);
        ArrayAdapter<String> adapter=new ArrayAdapter<>(this,android.R.layout.simple_spinner_item,assets);
        adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);picker.setAdapter(adapter);
        picker.setSelection(selected);
        layout.addView(picker);layout.addView(status);
        if(!inspectionMode){title.setVisibility(View.GONE);picker.setVisibility(View.GONE);status.setVisibility(View.GONE);}
        surface=new GLSurfaceView(this);surface.setContentDescription("DH2 native texture viewport");surface.setEGLContextClientVersion(2);
        surface.setEGLConfigChooser(8,8,8,8,16,0);
        surface.setOnTouchListener(new View.OnTouchListener(){
            float x,y;
            @Override public boolean onTouch(View view,MotionEvent event){
                if("ui/original-main-menu".equals(loadedAsset)){
                    final float px=event.getX(),py=event.getY();final int action=event.getActionMasked();
                    if(action!=MotionEvent.ACTION_DOWN&&action!=MotionEvent.ACTION_UP&&action!=MotionEvent.ACTION_MOVE&&action!=MotionEvent.ACTION_CANCEL)return true;
                    return forwardUiTouch(view,px,py,action,true);
                }
                if(!inspectionMode&&loadedAsset!=null&&loadedAsset.startsWith("worlds/")){
                    final int action=event.getActionMasked();
                    if(action==MotionEvent.ACTION_DOWN||action==MotionEvent.ACTION_UP||action==MotionEvent.ACTION_MOVE||action==MotionEvent.ACTION_CANCEL)
                        return forwardUiTouch(view,event.getX(),event.getY(),action,false);
                    return true;
                }
                if(event.getActionMasked()==MotionEvent.ACTION_DOWN){x=event.getX();y=event.getY();return true;}
                if(event.getActionMasked()==MotionEvent.ACTION_MOVE){
                    if(assets[selected].startsWith("worlds/"))return true;
                    float dx=(event.getX()-x)*.008f,dy=(event.getY()-y)*.008f;x=event.getX();y=event.getY();
                    surface.queueEvent(()->NativeBridge.orbit(dx,dy,1));return true;
                }
                if(event.getActionMasked()==MotionEvent.ACTION_UP){view.performClick();return true;}return true;
            }
        });
        surface.setRenderer(new GLSurfaceView.Renderer(){
            long lastVitals;
            boolean firstSurfaceFrame;
            boolean pendingSurfaceLoad;
            @Override public void onSurfaceCreated(GL10 gl,EGLConfig config){
                ready=false;loadedAsset=null;
                java.io.File external=getExternalFilesDir(null);
                java.io.File mods=new java.io.File(external!=null?external:getFilesDir(),"mods");
                if(!mods.isDirectory()&&!mods.mkdirs())Log.e("DH2Native","Could not create mod directory");
                NativeBridge.modDirectory(mods.getAbsolutePath());
                NativeBridge.runtimeDirectory(getFilesDir().getAbsolutePath());
                Log.i("DH2Native",NativeBridge.profileSlot(metadataSlot));
                String initialization=NativeBridge.initialize(getAssets());Log.i("DH2Native",initialization);
                if(initialization==null||!initialization.startsWith("Renderer: ")){show(initialization);return;}
                ready=true;
                NativeBridge.enemyAi(enemyAi);
                firstSurfaceFrame=true;pendingSurfaceLoad=true;
            }
            @Override public void onSurfaceChanged(GL10 gl,int w,int h){NativeBridge.resize(w,h);firstSurfaceFrame=true;}
            @Override public void onDrawFrame(GL10 gl){if(!ready)return;
                if(firstSurfaceFrame){
                    firstSurfaceFrame=false;
                    // GLSurfaceView's surfaceChanged waits for this frame on
                    // the UI thread. Acknowledge it before decoding the menu
                    // or world so input focus and lifecycle remain responsive.
                    gl.glClearColor(.08f,.09f,.11f,1);gl.glClear(GL10.GL_COLOR_BUFFER_BIT);
                    if(pendingSurfaceLoad){pendingSurfaceLoad=false;surface.post(()->surface.queueEvent(()->{
                        if(menuGameplaySlot>=0&&assets[selected].startsWith("worlds/")){
                            String start=startMenuGame(menuGameplaySlot);
                            if(isPlayableStart(start))acceptGameStart(menuGameplaySlot,start);
                            else{
                                // A fresh process has no retained canonical PlayerInfo.
                                // Re-enter the authored menu to assign it explicitly.
                                Log.i("DH2Native","Menu process restoration returned to profile selection | "+start);
                                menuGameplaySlot=-1;selected=0;loadSelected();
                            }
                        }
                        else if(assets.length>0)loadSelected();else show("No bundled asset fixtures");
                    }));}return;
                }
                NativeBridge.draw();
                if("ui/original-main-menu".equals(loadedAsset)&&!frontMenuReady)
                    runOnUiThread(()->{frontMenuReady=true;startTitleMusicIfReady();});
                String audio=NativeBridge.consumeMenuAudio();
                if(!audio.isEmpty()&&(introCinematic==null||audio.startsWith("volume,")))runOnUiThread(()->frontAudio.control(audio));
                String effect;
                do{effect=NativeBridge.consumeMenuSound();if(!effect.isEmpty()&&introCinematic==null){final String cue=effect;runOnUiThread(()->frontAudio.effect(cue));}}while(!effect.isEmpty());
                int startSlot=NativeBridge.consumeMenuLaunch();if(startSlot>=0){String start=startMenuGame(startSlot);acceptGameStart(startSlot,start);}long now=android.os.SystemClock.uptimeMillis();if(now-lastVitals>=200&&loadedAsset!=null&&loadedAsset.startsWith("worlds/")){lastVitals=now;int[] values=NativeBridge.playerVitals();if(attackDisplayPending&&values[6]!=5){attackDisplayPending=false;show(baseReport+"\n"+(values[4]!=0?"Defeated":"Attack finished."));}runOnUiThread(()->{vitals.setText(String.format(java.util.Locale.ROOT,"HP %.1f / %.1f   MP %.1f / %.1f%s",values[0]/256f,values[1]/256f,values[2]/256f,values[3]/256f,values[4]!=0?"   Defeated":""));vitals.setTextColor(values[4]!=0||values[5]==0?Color.rgb(255,150,150):Color.WHITE);});}}
    });
        surface.setRenderMode(GLSurfaceView.RENDERMODE_CONTINUOUSLY);
        FrameLayout viewport=new FrameLayout(this);viewport.addView(surface,new FrameLayout.LayoutParams(-1,-1));
        vitals=new TextView(this);vitals.setContentDescription("Player health and mana");vitals.setTextSize(14);vitals.setTextColor(Color.WHITE);vitals.setPadding(12,8,12,8);vitals.setBackgroundColor(Color.argb(160,15,20,25));vitals.setVisibility(View.GONE);
        FrameLayout.LayoutParams vitalsLayout=new FrameLayout.LayoutParams(-2,-2,Gravity.TOP|Gravity.LEFT);viewport.addView(vitals,vitalsLayout);
        movement=new MovementControl();movement.setVisibility(View.GONE);
        int padSize=(int)(160*getResources().getDisplayMetrics().density);
        FrameLayout.LayoutParams padLayout=new FrameLayout.LayoutParams(padSize,padSize,Gravity.BOTTOM|Gravity.LEFT);
        padLayout.leftMargin=padLayout.bottomMargin=(int)(16*getResources().getDisplayMetrics().density);viewport.addView(movement,padLayout);
        attack=new Button(this);attack.setText("Attack");attack.setContentDescription("Attack nearby enemy");attack.setVisibility(View.GONE);
        FrameLayout.LayoutParams attackLayout=new FrameLayout.LayoutParams((int)(112*getResources().getDisplayMetrics().density),(int)(64*getResources().getDisplayMetrics().density),Gravity.BOTTOM|Gravity.RIGHT);attackLayout.rightMargin=attackLayout.bottomMargin=(int)(24*getResources().getDisplayMetrics().density);viewport.addView(attack,attackLayout);
        final int basePadMargin=(int)(16*getResources().getDisplayMetrics().density);
        final int baseAttackMargin=(int)(24*getResources().getDisplayMetrics().density);
        final int overlayInsetCushion=(int)(8*getResources().getDisplayMetrics().density);
        // The source UI renderer fits its authored 480x320 stage (3:2) inside
        // the full GL surface. Keep native touch controls in that same stage;
        // on wide phones the side gutters are not playable screen area.
        final int[] safeInsets={0,0,0,0};
        final Runnable positionGameplayOverlays=()->{
            int width=viewport.getWidth(),height=viewport.getHeight();
            if(width<=0||height<=0)return;
            int stageWidth,stageHeight;
            if((long)width*2<=(long)height*3){stageWidth=width;stageHeight=width*2/3;}
            else{stageWidth=height*3/2;stageHeight=height;}
            int stageLeft=(width-stageWidth)/2,stageTop=(height-stageHeight)/2;
            int stageRight=width-stageLeft-stageWidth,stageBottom=height-stageTop-stageHeight;
            int safeLeft=Math.max(0,safeInsets[0]-stageLeft);
            int safeTop=Math.max(0,safeInsets[1]-stageTop);
            int safeRight=Math.max(0,safeInsets[2]-stageRight);
            int safeBottom=Math.max(0,safeInsets[3]-stageBottom);
            FrameLayout.LayoutParams p=(FrameLayout.LayoutParams)movement.getLayoutParams();
            p.leftMargin=stageLeft+Math.max(basePadMargin,safeLeft+overlayInsetCushion);
            p.bottomMargin=stageBottom+Math.max(basePadMargin,safeBottom+overlayInsetCushion);
            movement.setLayoutParams(p);
            FrameLayout.LayoutParams a=(FrameLayout.LayoutParams)attack.getLayoutParams();
            a.rightMargin=stageRight+Math.max(baseAttackMargin,safeRight+overlayInsetCushion);
            a.bottomMargin=stageBottom+Math.max(baseAttackMargin,safeBottom+overlayInsetCushion);
            attack.setLayoutParams(a);
            FrameLayout.LayoutParams v=(FrameLayout.LayoutParams)vitals.getLayoutParams();
            v.leftMargin=stageLeft+Math.max(basePadMargin,safeLeft+overlayInsetCushion);
            v.topMargin=stageTop+Math.max(basePadMargin,safeTop+overlayInsetCushion);
            vitals.setLayoutParams(v);
        };
        viewport.addOnLayoutChangeListener((view,left,top,right,bottom,oldLeft,oldTop,oldRight,oldBottom)->positionGameplayOverlays.run());
        androidx.core.view.ViewCompat.setOnApplyWindowInsetsListener(viewport,(view,insets)->{
            androidx.core.graphics.Insets safe=insets.getInsets(
                    androidx.core.view.WindowInsetsCompat.Type.displayCutout()|
                    androidx.core.view.WindowInsetsCompat.Type.systemGestures());
            safeInsets[0]=safe.left;safeInsets[1]=safe.top;safeInsets[2]=safe.right;safeInsets[3]=safe.bottom;
            positionGameplayOverlays.run();
            return insets;
        });
        attack.setOnClickListener(v->surface.queueEvent(()->{String report=NativeBridge.playerAttack(-1);attackDisplayPending=report.equals("Attacking")||attackDisplayPending;Log.i("DH2Native","Player input | "+report);show(baseReport+"\n"+report);}));
        layout.addView(viewport,new LinearLayout.LayoutParams(-1,0,1));
        if(playOpeningCinematic){
            introCinematic=new IntroCinematicView(this,()->runOnUiThread(this::finishOpeningCinematic));
            viewport.addView(introCinematic,new FrameLayout.LayoutParams(-1,-1));
        }
        TextView attribution=new TextView(this);
        attribution.setText("Dungeon Hunter 2 © Gameloft SE. Published by GOAT Games Company Limited.");
        attribution.setTextColor(Color.rgb(175,185,195));
        attribution.setTextSize(11);
        attribution.setGravity(Gravity.CENTER);
        attribution.setPadding(12,6,12,8);
        layout.addView(attribution,new LinearLayout.LayoutParams(-1,-2));
        if(!inspectionMode)attribution.setVisibility(View.GONE);
        picker.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener(){
            @Override public void onItemSelected(AdapterView<?> p,View v,int position,long id){selected=position;if(ready)surface.queueEvent(MainActivity.this::loadSelected);}
            @Override public void onNothingSelected(AdapterView<?> p){}
        });
        setContentView(layout);
        androidx.core.view.ViewCompat.requestApplyInsets(viewport);
        if(!inspectionMode)getWindow().getDecorView().post(this::enterImmersiveLandscape);
        if(introCinematic!=null)introCinematic.startPlayback(openingCinematicPositionMs);
        // Debug-only shell command invokes the same playerAttack entry point
        // as the button without am start pausing the Activity/held joystick.
        // DUMP is a system/shell permission, not granted to ordinary apps.
        if((getApplicationInfo().flags&ApplicationInfo.FLAG_DEBUGGABLE)!=0){
            debugAttackReceiver=new BroadcastReceiver(){
                @Override public void onReceive(Context context,Intent intent){
                    if(!ready||loadedAsset==null||!loadedAsset.startsWith("worlds/"))return;
                    if("com.example.dh2.DEBUG_RELOAD_WORLD".equals(intent.getAction())){
                        final String world=loadedAsset;
                        surface.queueEvent(()->{
                            try {
                                byte[] encoded=NativeBridge.readAsset(world,getAssets());
                                String report=NativeBridge.loadWorld(encoded,getAssets());
                                baseReport=world+"\n"+report;Log.i("DH2Native","World reload command applied | "+report);
                                show(baseReport);surface.requestRender();
                            } catch(java.io.IOException e) {Log.e("DH2Native","World reload failed",e);show("World reload failed: "+e.getMessage());}
                        });
                        return;
                    }
                    if("com.example.dh2.DEBUG_SPAWN_CHARACTER".equals(intent.getAction())){
                        final String name=intent.getStringExtra("character_name");
                        surface.queueEvent(()->{String report=NativeBridge.spawnCharacter(name);Log.i("DH2Native","Spawn command applied | "+report);show(baseReport+"\n"+report);surface.requestRender();});
                        return;
                    }
                    if("com.example.dh2.DEBUG_CHARACTER_HIT".equals(intent.getAction())){
                        final String name=intent.getStringExtra("character_name");
                        final int damage=intent.getIntExtra("raw_damage",0);
                        surface.queueEvent(()->{String report=NativeBridge.debugCharacterHit(name,damage);Log.i("DH2Native","Debug Character hit command applied | "+report);surface.requestRender();});
                        return;
                    }
                    if("com.example.dh2.DEBUG_ANIMATION_TIME".equals(intent.getAction())){
                        final int time=intent.getIntExtra("time_ms",-1);
                        inspectionTimeMs=time;
                        surface.queueEvent(()->{NativeBridge.animationTime(time);Log.i("DH2Native","Animation time command applied | time "+time);surface.requestRender();});
                        return;
                    }
                    final int target=intent.getIntExtra("player_target_index",-1);
                    if("com.example.dh2.DEBUG_PLAYER_SCALAR".equals(intent.getAction())){
                        final int value=intent.getIntExtra("raw_value",0);
                        final boolean write=intent.getBooleanExtra("write",false);
                        surface.queueEvent(()->{String report=NativeBridge.debugPlayerScalar(value,write);Log.i("DH2Native","Player scalar command applied | "+report);surface.requestRender();});
                        return;
                    }
                    if("com.example.dh2.DEBUG_PLAYER_MANA".equals(intent.getAction())){
                        final int amount=intent.getIntExtra("raw_amount",0);
                        surface.queueEvent(()->{String report=NativeBridge.debugPlayerMana(amount);Log.i("DH2Native","Player mana command applied | "+report);surface.requestRender();});
                        return;
                    }
                    if("com.example.dh2.DEBUG_PLAYER_DEATH".equals(intent.getAction())){
                        surface.queueEvent(()->{String report=NativeBridge.debugPlayerDeath();Log.i("DH2Native","Player death fixture applied | "+report);surface.requestRender();});
                        return;
                    }
                    if("com.example.dh2.DEBUG_PLAYER_SKILL_CHECK".equals(intent.getAction())){
                        final int slot=intent.getIntExtra("skill_slot",0);
                        surface.queueEvent(()->{String report=NativeBridge.debugPlayerSkillCheck(slot);Log.i("DH2Native","Player skill check command applied | "+report);surface.requestRender();});
                        return;
                    }
                    if("com.example.dh2.DEBUG_PLAYER_SKILL_COOLDOWN".equals(intent.getAction())){
                        final int delay=intent.getIntExtra("delay_ms",3500);
                        surface.queueEvent(()->{String report=NativeBridge.debugPlayerSkillCooldown(delay);Log.i("DH2Native","Player skill cooldown command applied | "+report);surface.requestRender();});
                        return;
                    }
                    surface.queueEvent(()->{String report=NativeBridge.playerAttack(target);attackDisplayPending=report.equals("Attacking")||attackDisplayPending;Log.i("DH2Native","Player command applied | "+report);show(baseReport+"\n"+report);});
                }
            };
            IntentFilter filter=new IntentFilter("com.example.dh2.DEBUG_PLAYER_ATTACK");
            filter.addAction("com.example.dh2.DEBUG_ANIMATION_TIME");
            filter.addAction("com.example.dh2.DEBUG_SPAWN_CHARACTER");
            filter.addAction("com.example.dh2.DEBUG_CHARACTER_HIT");
            filter.addAction("com.example.dh2.DEBUG_RELOAD_WORLD");
            filter.addAction("com.example.dh2.DEBUG_PLAYER_SKILL_COOLDOWN");
            filter.addAction("com.example.dh2.DEBUG_PLAYER_SKILL_CHECK");
            filter.addAction("com.example.dh2.DEBUG_PLAYER_MANA");
            filter.addAction("com.example.dh2.DEBUG_PLAYER_SCALAR");
            filter.addAction("com.example.dh2.DEBUG_PLAYER_DEATH");
            if(Build.VERSION.SDK_INT>=33)registerReceiver(debugAttackReceiver,filter,"android.permission.DUMP",null,Context.RECEIVER_EXPORTED);
            else registerReceiver(debugAttackReceiver,filter,"android.permission.DUMP",null);
        }
    }
    private void show(String text){runOnUiThread(()->status.setText(text));}
    @SuppressWarnings("deprecation")
    private void enterImmersiveLandscape(){
        configureImmersiveLandscapeWindow();
        if(Build.VERSION.SDK_INT>=30){
            WindowInsetsController controller=getWindow().getInsetsController();
            if(controller!=null){
                controller.hide(WindowInsets.Type.systemBars());
                controller.setSystemBarsBehavior(WindowInsetsController.BEHAVIOR_SHOW_TRANSIENT_BARS_BY_SWIPE);
            }
        }else getWindow().getDecorView().setSystemUiVisibility(View.SYSTEM_UI_FLAG_FULLSCREEN|View.SYSTEM_UI_FLAG_HIDE_NAVIGATION|View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY);
    }
    private void configureImmersiveLandscapeWindow(){
        androidx.core.view.WindowCompat.setDecorFitsSystemWindows(getWindow(),false);
        if(Build.VERSION.SDK_INT>=28){
            android.view.WindowManager.LayoutParams attributes=getWindow().getAttributes();
            if(attributes.layoutInDisplayCutoutMode!=android.view.WindowManager.LayoutParams.LAYOUT_IN_DISPLAY_CUTOUT_MODE_SHORT_EDGES){
                attributes.layoutInDisplayCutoutMode=android.view.WindowManager.LayoutParams.LAYOUT_IN_DISPLAY_CUTOUT_MODE_SHORT_EDGES;
                getWindow().setAttributes(attributes);
            }
        }
    }
    @Override public void onWindowFocusChanged(boolean hasFocus){
        super.onWindowFocusChanged(hasFocus);
        if(hasFocus&&!inspectionMode)enterImmersiveLandscape();
    }
    private boolean forwardUiTouch(View view,float x,float y,int action,boolean recoverMenuOnError){
        // These are GLSurfaceView-local physical pixels (top-left origin); the
        // native UI session maps them against the current full-screen viewport.
        surface.queueEvent(()->{
            String reply=NativeBridge.menuTouch(x,y,action);
            if(reply!=null&&!reply.isEmpty()){
                Log.w("DH2Native",reply);
                if(recoverMenuOnError){
                    runOnUiThread(()->android.widget.Toast.makeText(MainActivity.this,reply,android.widget.Toast.LENGTH_LONG).show());
                    // Recover only after the failed ActionScript scope unwinds.
                    NativeBridge.loadFrontScreen(getFilesDir().getAbsolutePath(),getAssets());
                }
            }
        });
        if(action==MotionEvent.ACTION_UP)view.performClick();
        return true;
    }
    private void finishOpeningCinematic(){
        IntroCinematicView current=introCinematic;
        if(current==null)return;
        current.dispose();
        if(current.getParent() instanceof FrameLayout)((FrameLayout)current.getParent()).removeView(current);
        introCinematic=null;
        startTitleMusicIfReady();
    }
    private void startTitleMusicIfReady(){
        if(frontMenuReady&&introCinematic==null&&!titleMusicStarted){
            titleMusicStarted=true;
            frontAudio.title();
            Log.i("DH2Native","Original title music started after opening flow");
        }
    }
    private String startMenuGame(int slot){return NativeBridge.startMenuGame(slot,getAssets(),debugLevelRow);}
    @Override protected void onNewIntent(Intent intent){
        if(intent.hasExtra("profile_slot")&&intent.getIntExtra("profile_slot",-1)!=metadataSlot){
            Log.i("DH2Native","Campaign metadata slot change rejected | requested "+intent.getIntExtra("profile_slot",-1)+" | active "+metadataSlot+" | relaunch required");
            show("Relaunch the app to select another campaign import.");
            return;
        }
        super.onNewIntent(intent);setIntent(intent);
        if(intent.hasExtra("debug_level_row")&&(getApplicationInfo().flags&ApplicationInfo.FLAG_DEBUGGABLE)!=0){
            int requestedRow=intent.getIntExtra("debug_level_row",-1);
            if(requestedRow==-1||requestedRow==23){debugLevelRow=requestedRow;if(requestedRow==23)Log.i("DH2Native","Debug LevelList row override armed | row 23 | profile save unchanged");}
            else Log.w("DH2Native","Ignoring unsupported debug LevelList row "+requestedRow);
        }
        if(intent.hasExtra("enemy_ai"))enemyAi=intent.getBooleanExtra("enemy_ai",true);
        if(intent.hasExtra("time_ms"))inspectionTimeMs=intent.getIntExtra("time_ms",-1);
        pendingActorCommand=true;
        if(!ready||loadedAsset==null||!loadedAsset.startsWith("worlds/"))return;
        final int index=intent.getIntExtra("object_index",-1),time=inspectionTimeMs,target=intent.getIntExtra("combat_target_index",-1);
        final String state=intent.getStringExtra("object_state");
        surface.queueEvent(()->{
            NativeBridge.enemyAi(enemyAi);
            NativeBridge.animationTime(time);NativeBridge.focusObject(index);
            if(intent.getBooleanExtra("player_attack",false)){String report=NativeBridge.playerAttack(intent.getIntExtra("player_target_index",-1));Log.i("DH2Native","Player command applied | "+report);pendingActorCommand=false;show(baseReport+"\n"+report);return;}
            String targetReport=index>=0&&(state!=null||intent.hasExtra("combat_target_index"))?NativeBridge.combatTarget(index,target):"Combat target unchanged";
            boolean accepted=targetReport.equals("Combat target selected")||targetReport.equals("Combat target cleared")||targetReport.equals("Combat target unchanged");
            String report=accepted?(state==null?"Actor state unchanged":NativeBridge.objectState(index,state)):targetReport;
            Log.i("DH2Native","Actor command applied | index "+index+" | state "+state+" | time "+time+" | "+report);
            pendingActorCommand=false;
            show(baseReport+"\n"+report);surface.requestRender();
        });
    }
    private void loadSelected(){loadSelected(false);}
    private void loadSelected(boolean gameplayExit){
        String name=assets[selected];
        if(name.equals(loadedAsset))return;
        runOnUiThread(()->{boolean inspectionControls=inspectionMode&&name.startsWith("worlds/");movement.setVisibility(inspectionControls?View.VISIBLE:View.GONE);vitals.setVisibility(inspectionControls?View.VISIBLE:View.GONE);attack.setVisibility(inspectionControls?View.VISIBLE:View.GONE);});
        try{
            if(name.equals("ui/original-main-menu")){
                menuGameplaySlot=-1;
                String report=gameplayExit?NativeBridge.returnToMainMenu(getFilesDir().getAbsolutePath(),getAssets()):NativeBridge.loadFrontScreen(getFilesDir().getAbsolutePath(),getAssets());
                loadedAsset=name;baseReport=report;Log.i("DH2Native",report);show(report);
                runOnUiThread(()->{frontMenuReady=false;if(!report.startsWith("Original menu ready")){titleMusicStarted=false;frontAudio.stop();}});return;
            }
            runOnUiThread(()->frontMenuReady=false);
            byte[] encoded=NativeBridge.readAsset(name,getAssets());
            if(encoded==null)throw new java.io.IOException("Asset read failed");
            String report=name.startsWith("worlds/")?NativeBridge.loadWorld(encoded,getAssets()):name.startsWith("models/")?NativeBridge.loadModel(encoded,getAssets()):NativeBridge.loadTexture(encoded);
            if(!report.contains("failed")&&!report.contains("error"))loadedAsset=name;
            baseReport=name+"\n"+report;
            if(name.startsWith("models/")||name.startsWith("worlds/"))NativeBridge.animationTime(inspectionTimeMs);
            if(name.startsWith("worlds/"))NativeBridge.focusObject(getIntent().getIntExtra("object_index",-1));
            if(name.startsWith("worlds/")&&pendingActorCommand&&getIntent().getBooleanExtra("player_attack",false)){
                String attackReport=NativeBridge.playerAttack(getIntent().getIntExtra("player_target_index",-1));report+="\n"+attackReport;
                Log.i("DH2Native","Player command applied | "+attackReport);pendingActorCommand=false;
            }
            if(name.startsWith("worlds/")&&(getIntent().getStringExtra("object_state")!=null||(pendingActorCommand&&getIntent().hasExtra("combat_target_index")))&&(!report.contains("Native combat resumed")||pendingActorCommand)){
                int index=getIntent().getIntExtra("object_index",-1);
                String targetReport=NativeBridge.combatTarget(index,getIntent().getIntExtra("combat_target_index",-1));
                String state=getIntent().getStringExtra("object_state");
                boolean accepted=targetReport.equals("Combat target selected")||targetReport.equals("Combat target cleared");
                report+="\n"+(accepted?(state==null?"Actor state unchanged":NativeBridge.objectState(index,state)):targetReport);
            }
            Log.i("DH2Native",name+": "+report);
            if(name.startsWith("worlds/")&&pendingActorCommand){
                Log.i("DH2Native","Actor command applied | index "+getIntent().getIntExtra("object_index",-1)+" | state "+getIntent().getStringExtra("object_state")+" | time "+getIntent().getIntExtra("time_ms",-1)+" | "+report);
                pendingActorCommand=false;
            }
            show(name+"\n"+report);surface.requestRender();
        }catch(Exception e){Log.e("DH2Native","Asset load failed: "+name,e);show(name+"\n"+e);}
    }
    private void acceptGameStart(int slot,String report){
        Log.i("DH2Native","Menu game start | slot "+slot+" | "+report);
        if(!isPlayableStart(report)){runOnUiThread(()->{status.setVisibility(View.VISIBLE);status.setText(report);});return;}
        menuGameplaySlot=slot;loadedAsset=report.startsWith("SWAMP |")?"worlds/001_swamp.dwld":"worlds/crypt01.dwld";baseReport=report;
        for(int i=0;i<assets.length;i++)if(assets[i].equals(loadedAsset)){selected=i;break;}
        runOnUiThread(()->{frontMenuReady=false;titleMusicStarted=false;frontAudio.stop();movement.setVisibility(inspectionMode?View.VISIBLE:View.GONE);attack.setVisibility(inspectionMode?View.VISIBLE:View.GONE);vitals.setVisibility(inspectionMode?View.VISIBLE:View.GONE);status.setVisibility(inspectionMode?View.VISIBLE:View.GONE);});
    }
    private static boolean isPlayableStart(String report){
        return report!=null&&(report.startsWith("Crypt |")||report.startsWith("SWAMP |"));
    }
    private void handleBack(){
        if(!inspectionMode&&ready&&loadedAsset!=null&&loadedAsset.startsWith("worlds/")){
            movement.stop();selected=0;surface.queueEvent(()->loadSelected(true));return;
        }
        if(!inspectionMode&&ready&&!"ui/original-main-menu".equals(loadedAsset)){
            movement.stop();selected=0;surface.queueEvent(this::loadSelected);return;
        }
        finish();
    }
    @Override public void onBackPressed(){handleBack();}
    private final class MovementControl extends View {
        private final Paint paint=new Paint(Paint.ANTI_ALIAS_FLAG);private float axisX,axisY;
        MovementControl(){super(MainActivity.this);setContentDescription("Movement control");setFocusable(true);}
        @Override protected void onDraw(Canvas canvas){
            float radius=getWidth()*.44f,cx=getWidth()*.5f,cy=getHeight()*.5f;
            paint.setColor(Color.argb(140,55,65,75));canvas.drawCircle(cx,cy,radius,paint);
            paint.setStyle(Paint.Style.STROKE);paint.setStrokeWidth(3);paint.setColor(Color.argb(210,160,180,200));canvas.drawCircle(cx,cy,radius,paint);paint.setStyle(Paint.Style.FILL);
            paint.setColor(Color.argb(220,175,190,205));canvas.drawCircle(cx+axisX*radius*.65f,cy+axisY*radius*.65f,radius*.26f,paint);
        }
        @Override public boolean onTouchEvent(MotionEvent event){
            if(event.getActionMasked()==MotionEvent.ACTION_DOWN||event.getActionMasked()==MotionEvent.ACTION_MOVE){
                axisX=(event.getX()-getWidth()*.5f)/(getWidth()*.44f);axisY=(event.getY()-getHeight()*.5f)/(getWidth()*.44f);
                float length=(float)Math.hypot(axisX,axisY);if(length>1){axisX/=length;axisY/=length;}
            }else if(event.getActionMasked()==MotionEvent.ACTION_UP||event.getActionMasked()==MotionEvent.ACTION_CANCEL){axisX=axisY=0;performClick();}
            float x=axisX,y=-axisY;surface.queueEvent(()->NativeBridge.moveAxis(x,y));invalidate();return true;
        }
        @Override public boolean performClick(){super.performClick();return true;}
        void stop(){axisX=axisY=0;invalidate();surface.queueEvent(()->NativeBridge.moveAxis(0,0));}
    }
    @Override protected void onPause(){if(introCinematic!=null)introCinematic.pausePlayback();super.onPause();frontAudio.pause();movement.stop();surface.onPause();}
    @Override protected void onResume(){super.onResume();frontAudio.resume();if(introCinematic!=null)introCinematic.resumePlayback();surface.onResume();}
    @Override protected void onDestroy(){if(debugAttackReceiver!=null)unregisterReceiver(debugAttackReceiver);if(introCinematic!=null)introCinematic.dispose();frontAudio.stop();super.onDestroy();}
    @Override protected void onSaveInstanceState(Bundle state){super.onSaveInstanceState(state);if(assets.length>0)state.putString("asset",assets[selected]);state.putBoolean("pendingPlayerAttack",pendingActorCommand&&getIntent().getBooleanExtra("player_attack",false));state.putBoolean("enemyAi",enemyAi);state.putInt("inspectionTimeMs",inspectionTimeMs);state.putInt("metadataSlot",metadataSlot);state.putInt("menuGameplaySlot",menuGameplaySlot);state.putBoolean("openingCinematicPending",introCinematic!=null&&introCinematic.isPending());state.putInt("openingCinematicPositionMs",introCinematic!=null?introCinematic.currentPositionMs():0);}
}
