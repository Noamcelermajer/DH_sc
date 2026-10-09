#include "../quest_current_selection_v1.hpp"
#include <cassert>
#include <string>
int main(){
 dh2::data::PlayerSavegameV1 save;std::string error;
 assert(dh2::data::quest_current_selection_v1::set(save,false,1,42,error));
 assert(save.source_quest_log_b8().word_2c[1]==42&&save.source_quest_log_118().word_2c[1]==-1);
 assert(!dh2::data::quest_current_selection_v1::set(save,true,1,19,error));
 assert(save.source_quest_log_b8().word_2c[1]==42&&!error.empty());
 assert(!dh2::data::quest_current_selection_v1::set(save,false,3,19,error));
 assert(save.source_quest_log_b8().word_2c[1]==42&&!error.empty());
}
