# Projectile lifecycle

Source: `libDungeonHunter2.so`, SHA-256
`36498eb8180ffb74759e6305e9596db999f18583d460f3b8534abcb6022f5e80`.
Functions were checked through REA's live IDA provider.

- `ProjectileManager::_Create` `0x3e693c` generates `Projectile_%03u` or
  `LTProjectile_%03u`, calls ObjectManager factory spawn, then SetManager.
- `ProjectileManager::Spawn` `0x3e6edc` / `0x3e701c`: id bounds, `_Create`,
  SetUpdating(true), matching float/bool SetInfo overload, then active byte.
- `Projectile::Update` `0x3e51b0`: pending impact/target gate, destination,
  GameObject update, motion/time/range, floor/path and room tests; expiry calls
  OnExpire. Physics and complete update remain unimplemented here.
- `Projectile::OnCollision` `0x3e55b4`: active/exit and target filters, stores
  target/point, optional callback, then handles callback result.
- `Projectile::OnExpire` `0x3e5078`: optional row+52 floor correction, clear
  +0x3cc, set +0x3d1, GetTargetPosition, HandleImpactFX. It does not despawn.
- `ProjectileManager::DeSpawn` `0x3e61b4`: SetUpdating(false), Stop, clear
  active byte, then release the source pool slot; the ObjectManager object stays.

The selected port implements fresh Spawn choreography, the post-GameObject
Update lifetime/speed/range gates, OnExpire ordering, ordinary DeSpawn, and
OnCollision filter/store/callback dispatch against the shared ObjectManager
owner. Collision detection and source relation/callback bodies remain supplied
by the caller; row+4's owner-target predicate is injected rather than guessed.
No second pool/manager is created. Factory construction, pool reuse, physics,
floor/room Update tests, and renderer callsite remain open.

Callback dispatch coverage: result `1` rejects the hit after storing target and
point; `2` calls optional hit callback then impact FX; `3` runs type-1 OnExpire
and returns pending; absent/other callbacks use the source pending-expiry path.
