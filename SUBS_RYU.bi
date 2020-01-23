#include once "mb_sound_lib2.bi"

'declare sub GET_ANIMATION_RYU(commandz as string,ani_pointers() as any ptr,frame_delays() as double,byref frame_counts as integer,return_string as string)
'declare sub SOUND_RYU(commandz as string)
'declare sub CONTROL_P1_RYU(byref input_state as string,byref input_state2 as string,byref input_state3 as string)
'declare sub JUMPING_FORWARD_RYU(byref rx as integer,byref ry as integer,byref input_status as string,byref i_state as string,byref d_state as string,byref current_frame as integer,byref new_state as string,input_statez as string,input_statez2 as string,input_statez3 as string,t_array() as string)
'declare sub JUMPING_BACK_RYU(byref rx as integer,byref ry as integer,byref input_status as string,byref i_state as string,byref d_state as string,byref current_frame as integer,byref new_state as string,input_statez as string,input_statez2 as string,input_statez3 as string,t_array() as string)
'declare sub JUMPING_RYU(byref rx as integer,byref ry as integer,byref input_status as string,byref i_state as string,byref d_state as string,byref current_frame as integer,byref new_state as string,input_statez as string,input_statez2 as string,input_statez3 as string,t_array() as string)
'declare sub JUMPING_FORWARD_PUNCH_RYU(byref rx as integer,byref ry as integer,byref input_status as string,byref i_state as string,byref d_state as string,byref current_frame as integer,byref new_state as string,byref input_statez as string,byref input_statez2 as string,byref input_statez3 as string,t_array() as string)
'declare sub JUMPING_BACK_PUNCH_RYU(byref rx as integer,byref ry as integer,byref input_status as string,byref i_state as string,byref d_state as string,byref current_frame as integer,byref new_state as string,byref input_statez as string,byref input_statez2 as string,byref input_statez3 as string,t_array() as string)
'declare sub JUMPING_FORWARD_KICK_RYU(byref rx as integer,byref ry as integer,byref input_status as string,byref i_state as string,byref d_state as string,byref current_frame as integer,byref new_state as string,byref input_statez as string,byref input_statez2 as string,byref input_statez3 as string,t_array() as string)
'declare sub JUMPING_BACK_KICK_RYU(byref rx as integer,byref ry as integer,byref input_status as string,byref i_state as string,byref d_state as string,byref current_frame as integer,byref new_state as string,byref input_statez as string,byref input_statez2 as string,byref input_statez3 as string,t_array() as string)
'declare sub JUMPING_PUNCH_RYU(byref rx as integer,byref ry as integer,byref input_status as string,byref i_state as string,byref d_state as string,byref current_frame as integer,byref new_state as string,byref input_statez as string,byref input_statez2 as string,byref input_statez3 as string,t_array() as string)
'declare sub JUMPING_KICK_RYU(byref rx as integer,byref ry as integer,byref input_status as string,byref i_state as string,byref d_state as string,byref current_frame as integer,byref new_state as string,byref input_statez as string,byref input_statez2 as string,byref input_statez3 as string,t_array() as string)
'declare sub HADOKEN_RYU(byref rx as integer,byref ry as integer,byref hx1 as integer,byref hy1 as integer,byref current_frame as integer,byref fireball_frame as integer,byref new_state3 as string,byref hadoken_active as string,byref input_active as string)
'declare sub SHORYUKEN_RYU(byref rx as integer,byref ry as integer,byref d_state as string,byref input_status as string,byref current_frame as integer,byref new_state4 as string)
'declare sub STATE_RYU(byref rx as integer,byref ry as integer,byref cur_ani as any ptr,states_ryu() as string,byref hadoken_active as string,byref hx as integer,byref hy as integer,byref cur_ani22 as any ptr)
'===============================================================================
SUB GET_ANIMATION_RYU(commandz as string,ani_pointers() as any ptr,frame_delays() as double,byref frame_counts as integer,return_string as string)
static standing_ryu (1 to 6) as sprite
static walkback_ryu (1 to 6) as sprite
static walkforward_ryu (1 to 6) as sprite
static crouch_ryu (1 to 3) as sprite
static jumping_ryu (1 to 7) as sprite
static return_ryu (1 to 3) as sprite
static jumpingforward_ryu (1 to 8) as sprite
static jumpingback_ryu (1 to 8) as sprite
static standingpunch_ryu (1 to 3) as sprite
static crouchingpunch_ryu (1 to 5) as sprite
static jumpingpunch_ryu (1 to 3) as sprite
static standingkick_ryu (1 to 3) as sprite
static crouchingkick_ryu (1 to 5) as sprite
static jumpingkick_ryu (1 to 5) as sprite
static jumpingkick2_ryu (1 to 5) as sprite
static hadoken_ryu (1 to 8) as sprite
static fireball (1 to 4) as sprite
static shoryuken_ryu (1 to 7) as sprite

static last_command as string
dim i as integer

select case commandz
case "LC"
'return last command
return_string=last_command
case "STANDING"
frame_counts=6
for i=1 to frame_counts
ani_pointers(i)=standing_ryu(i).spritebuf
next
frame_delays(1)=.1
frame_delays(2)=.1
frame_delays(3)=.1
frame_delays(4)=.1
frame_delays(5)=.1
frame_delays(6)=.1    
case "WALKBACK"
frame_counts=6
for i=1 to frame_counts
ani_pointers(i)=walkback_ryu(i).spritebuf
next
frame_delays(1)=.1
frame_delays(2)=.1
frame_delays(3)=.1
frame_delays(4)=.1
frame_delays(5)=.1
frame_delays(6)=.1    
case "WALKFORWARD"
frame_counts=6
for i=1 to frame_counts
ani_pointers(i)=walkforward_ryu(i).spritebuf
next
frame_delays(1)=.1
frame_delays(2)=.1
frame_delays(3)=.1
frame_delays(4)=.1
frame_delays(5)=.1
frame_delays(6)=.1   
case "CROUCH"
frame_counts=3
for i=1 to frame_counts
ani_pointers(i)=crouch_ryu(i).spritebuf
next
frame_delays(1)=.1
frame_delays(2)=.1
frame_delays(3)=.1    
case "JUMPING"
frame_counts=7
for i=1 to frame_counts
ani_pointers(i)=jumping_ryu(i).spritebuf
next
frame_delays(1)=.1
frame_delays(2)=.1
frame_delays(3)=.1
frame_delays(4)=.1
frame_delays(5)=.1
frame_delays(6)=.1
frame_delays(7)=.1    
case "RETURN"
frame_counts=3
for i=1 to frame_counts
ani_pointers(i)=return_ryu(i).spritebuf
next
frame_delays(1)=.1
frame_delays(2)=.1
frame_delays(3)=.1 
case "JUMPINGBACK"
frame_counts=8
dim i as integer
for i=1 to frame_counts
ani_pointers(i)=jumpingback_ryu(i).spritebuf
next
frame_delays(1)=.2
frame_delays(2)=.1
frame_delays(3)=.1
frame_delays(4)=.1
frame_delays(5)=.1
frame_delays(6)=.1  
frame_delays(7)=.1 
frame_delays(8)=.1
case "JUMPINGFORWARD"
frame_counts=8
dim i as integer
for i=1 to frame_counts
ani_pointers(i)=jumpingforward_ryu(i).spritebuf
next
frame_delays(1)=.2
frame_delays(2)=.1
frame_delays(3)=.1
frame_delays(4)=.1
frame_delays(5)=.1
frame_delays(6)=.1  
frame_delays(7)=.1 
frame_delays(8)=.1
case "STANDINGPUNCH"
frame_counts=3
for i=1 to frame_counts
ani_pointers(i)=standingpunch_ryu(i).spritebuf
next
frame_delays(1)=.1
frame_delays(2)=.2
frame_delays(3)=.1
case "CROUCHINGPUNCH"
frame_counts=5
for i=1 to frame_counts
ani_pointers(i)=crouchingpunch_ryu(i).spritebuf
next
frame_delays(1)=.1
frame_delays(2)=.1
frame_delays(3)=.2
frame_delays(4)=.1
frame_delays(5)=.1    
case "JUMPINGPUNCH"
frame_counts=3
for i=1 to frame_counts
ani_pointers(i)=jumpingpunch_ryu(i).spritebuf
next
frame_delays(1)=.1
frame_delays(2)=.2
frame_delays(3)=.003
case "STANDINGKICK"
frame_counts=3
for i=1 to frame_counts
ani_pointers(i)=standingkick_ryu(i).spritebuf
next
frame_delays(1)=.1
frame_delays(2)=.2
frame_delays(3)=.1    
case "CROUCHINGKICK"
frame_counts=5
for i=1 to frame_counts
ani_pointers(i)=crouchingkick_ryu(i).spritebuf
next
frame_delays(1)=.1
frame_delays(2)=.25
frame_delays(3)=.1
frame_delays(4)=.1
frame_delays(5)=.1    
case "JUMPINGKICK"
frame_counts=5
for i=1 to frame_counts
ani_pointers(i)=jumpingkick_ryu(i).spritebuf
next
frame_delays(1)=.1
frame_delays(2)=.1
frame_delays(3)=.1
frame_delays(4)=.1
frame_delays(5)=.1
case "JUMPINGKICK2"
frame_counts=5
for i=1 to frame_counts
ani_pointers(i)=jumpingkick2_ryu(i).spritebuf
next
frame_delays(1)=.1
frame_delays(2)=.2
frame_delays(3)=.1
frame_delays(4)=.1
frame_delays(5)=.1
case "HADOKEN"
frame_counts=8
for i=1 to frame_counts
ani_pointers(i)=hadoken_ryu(i).spritebuf
next
frame_delays(1)=.1
frame_delays(2)=.1
frame_delays(3)=.1
frame_delays(4)=.1
frame_delays(5)=.1
frame_delays(6)=.15
frame_delays(7)=.2
frame_delays(8)=.15  
case "FIREBALL"
frame_counts=4
for i=1 to frame_counts
ani_pointers(i)=fireball(i).spritebuf
next
frame_delays(1)=.2
frame_delays(2)=.1
frame_delays(3)=.1
frame_delays(4)=.1
case "SHORYUKEN"
frame_counts=7
for i=1 to frame_counts
ani_pointers(i)=shoryuken_ryu(i).spritebuf
next
frame_delays(1)=.1
frame_delays(2)=.1
frame_delays(3)=.4
frame_delays(4)=.1
frame_delays(5)=.1
frame_delays(6)=.1  
frame_delays(7)=.1
case "LOAD"
LOAD_SPRITE standing_ryu(1),"graphics/ryu/ryu1_0-0.bmp"
LOAD_SPRITE standing_ryu(2),"graphics/ryu/ryu1_0-1.bmp"
LOAD_SPRITE standing_ryu(3),"graphics/ryu/ryu1_0-2.bmp"
LOAD_SPRITE standing_ryu(4),"graphics/ryu/ryu1_0-3.bmp"
LOAD_SPRITE standing_ryu(5),"graphics/ryu/ryu1_0-4.bmp"
LOAD_SPRITE standing_ryu(6),"graphics/ryu/ryu1_0-5.bmp"
'****
LOAD_SPRITE walkback_ryu(1),"graphics/ryu/ryu1_21-0.bmp"
LOAD_SPRITE walkback_ryu(2),"graphics/ryu/ryu1_21-1.bmp"
LOAD_SPRITE walkback_ryu(3),"graphics/ryu/ryu1_21-2.bmp"
LOAD_SPRITE walkback_ryu(4),"graphics/ryu/ryu1_21-3.bmp"
LOAD_SPRITE walkback_ryu(5),"graphics/ryu/ryu1_21-4.bmp"
LOAD_SPRITE walkback_ryu(6),"graphics/ryu/ryu1_21-5.bmp"
'****
LOAD_SPRITE walkforward_ryu(1),"graphics/ryu/ryu1_20-0.bmp"
LOAD_SPRITE walkforward_ryu(2),"graphics/ryu/ryu1_20-1.bmp"
LOAD_SPRITE walkforward_ryu(3),"graphics/ryu/ryu1_20-2.bmp"
LOAD_SPRITE walkforward_ryu(4),"graphics/ryu/ryu1_20-3.bmp"
LOAD_SPRITE walkforward_ryu(5),"graphics/ryu/ryu1_20-4.bmp"
LOAD_SPRITE walkforward_ryu(6),"graphics/ryu/ryu1_20-5.bmp"
'****
LOAD_SPRITE crouch_ryu(1),"graphics/ryu/ryu1_10-00.bmp"
LOAD_SPRITE crouch_ryu(2),"graphics/ryu/ryu1_10-01.bmp"
LOAD_SPRITE crouch_ryu(3),"graphics/ryu/ryu1_10-02.bmp"
'****
LOAD_SPRITE jumping_ryu(1),"graphics/ryu/ryu1_41-0.bmp"
LOAD_SPRITE jumping_ryu(2),"graphics/ryu/ryu1_41-1.bmp"
LOAD_SPRITE jumping_ryu(3),"graphics/ryu/ryu1_41-2.bmp"
LOAD_SPRITE jumping_ryu(4),"graphics/ryu/ryu1_41-3.bmp"
LOAD_SPRITE jumping_ryu(5),"graphics/ryu/ryu1_41-4.bmp"
LOAD_SPRITE jumping_ryu(6),"graphics/ryu/ryu1_41-5.bmp"
LOAD_SPRITE jumping_ryu(7),"graphics/ryu/ryu1_41-6.bmp"
'****
LOAD_SPRITE return_ryu(3),"graphics/ryu/ryu1_41-2.bmp"
LOAD_SPRITE return_ryu(2),"graphics/ryu/ryu1_41-3.bmp"
LOAD_SPRITE return_ryu(1),"graphics/ryu/ryu1_41-4.bmp"
'****
LOAD_SPRITE jumpingforward_ryu(1),"graphics/ryu/ryu1_42-0.bmp"
LOAD_SPRITE jumpingforward_ryu(2),"graphics/ryu/ryu1_42-1.bmp"
LOAD_SPRITE jumpingforward_ryu(3),"graphics/ryu/ryu1_42-2.bmp"
LOAD_SPRITE jumpingforward_ryu(4),"graphics/ryu/ryu1_42-3.bmp"
LOAD_SPRITE jumpingforward_ryu(5),"graphics/ryu/ryu1_42-4.bmp"
LOAD_SPRITE jumpingforward_ryu(6),"graphics/ryu/ryu1_42-5.bmp"
LOAD_SPRITE jumpingforward_ryu(7),"graphics/ryu/ryu1_41-6.bmp"
LOAD_SPRITE jumpingforward_ryu(8),"graphics/ryu/ryu1_41-0.bmp"
'****
LOAD_SPRITE jumpingback_ryu(6),"graphics/ryu/ryu1_42-0.bmp"
LOAD_SPRITE jumpingback_ryu(5),"graphics/ryu/ryu1_42-1.bmp"
LOAD_SPRITE jumpingback_ryu(4),"graphics/ryu/ryu1_42-2.bmp"
LOAD_SPRITE jumpingback_ryu(3),"graphics/ryu/ryu1_42-3.bmp"
LOAD_SPRITE jumpingback_ryu(2),"graphics/ryu/ryu1_42-4.bmp"
LOAD_SPRITE jumpingback_ryu(1),"graphics/ryu/ryu1_42-5.bmp"
LOAD_SPRITE jumpingback_ryu(7),"graphics/ryu/ryu1_42-0.bmp"
LOAD_SPRITE jumpingback_ryu(8),"graphics/ryu/ryu1_41-0.bmp"
'****
LOAD_SPRITE standingpunch_ryu(1),"graphics/ryu/ryu1_210-0.bmp"
LOAD_SPRITE standingpunch_ryu(2),"graphics/ryu/ryu1_210-1.bmp"
LOAD_SPRITE standingpunch_ryu(3),"graphics/ryu/ryu1_210-0.bmp"
'****
LOAD_SPRITE crouchingpunch_ryu(1),"graphics/ryu/ryu1_305-0.bmp"
LOAD_SPRITE crouchingpunch_ryu(2),"graphics/ryu/ryu1_305-1.bmp"
LOAD_SPRITE crouchingpunch_ryu(3),"graphics/ryu/ryu1_305-2.bmp"
LOAD_SPRITE crouchingpunch_ryu(4),"graphics/ryu/ryu1_305-1.bmp"
LOAD_SPRITE crouchingpunch_ryu(5),"graphics/ryu/ryu1_305-0.bmp"
'****
LOAD_SPRITE jumpingpunch_ryu(1),"graphics/ryu/ryu1_355-0.bmp"
LOAD_SPRITE jumpingpunch_ryu(2),"graphics/ryu/ryu1_355-1.bmp"
LOAD_SPRITE jumpingpunch_ryu(3),"graphics/ryu/ryu1_355-0.bmp"
'****
LOAD_SPRITE standingkick_ryu(1),"graphics/ryu/ryu1_250-0.bmp"
LOAD_SPRITE standingkick_ryu(2),"graphics/ryu/ryu1_250-1.bmp"
LOAD_SPRITE standingkick_ryu(3),"graphics/ryu/ryu1_250-0.bmp"
'LOAD_SPRITE standingkick_ryu(1),"graphics/ryu/ryu1_410-0.bmp"
'LOAD_SPRITE standingkick_ryu(2),"graphics/ryu/ryu1_410-1.bmp"
'LOAD_SPRITE standingkick_ryu(3),"graphics/ryu/ryu1_410-2.bmp"
'LOAD_SPRITE standingkick_ryu(4),"graphics/ryu/ryu1_410-3.bmp"
'LOAD_SPRITE standingkick_ryu(5),"graphics/ryu/ryu1_410-4.bmp"
'****
LOAD_SPRITE crouchingkick_ryu(1),"graphics/ryu/ryu1_330-0.bmp"
LOAD_SPRITE crouchingkick_ryu(2),"graphics/ryu/ryu1_330-1.bmp"
LOAD_SPRITE crouchingkick_ryu(3),"graphics/ryu/ryu1_330-2.bmp"
LOAD_SPRITE crouchingkick_ryu(4),"graphics/ryu/ryu1_330-3.bmp"
LOAD_SPRITE crouchingkick_ryu(5),"graphics/ryu/ryu1_330-4.bmp"
'****
LOAD_SPRITE jumpingkick2_ryu(1),"graphics/ryu/ryu1_405-0.bmp"
LOAD_SPRITE jumpingkick2_ryu(2),"graphics/ryu/ryu1_405-1.bmp"
LOAD_SPRITE jumpingkick2_ryu(3),"graphics/ryu/ryu1_405-0.bmp"
LOAD_SPRITE jumpingkick2_ryu(4),"graphics/ryu/ryu1_41-6.bmp"
LOAD_SPRITE jumpingkick2_ryu(5),"graphics/ryu/ryu1_41-0.bmp"
'****
LOAD_SPRITE jumpingkick_ryu(1),"graphics/ryu/ryu1_410-0.bmp"
LOAD_SPRITE jumpingkick_ryu(2),"graphics/ryu/ryu1_410-1.bmp"
LOAD_SPRITE jumpingkick_ryu(3),"graphics/ryu/ryu1_410-2.bmp"
LOAD_SPRITE jumpingkick_ryu(4),"graphics/ryu/ryu1_410-3.bmp"
LOAD_SPRITE jumpingkick_ryu(5),"graphics/ryu/ryu1_410-4.bmp"
'****
LOAD_SPRITE hadoken_ryu(1),"graphics/ryu/ryu1_1200-0.bmp"
LOAD_SPRITE hadoken_ryu(2),"graphics/ryu/ryu1_1200-1.bmp"
LOAD_SPRITE hadoken_ryu(3),"graphics/ryu/ryu1_1200-2.bmp"
LOAD_SPRITE hadoken_ryu(4),"graphics/ryu/ryu1_1200-3.bmp"
LOAD_SPRITE hadoken_ryu(5),"graphics/ryu/ryu1_1200-5.bmp"
LOAD_SPRITE hadoken_ryu(6),"graphics/ryu/ryu1_1200-3.bmp"
'LOAD_SPRITE hadoken_ryu(5),"graphics/ryu/ryu1_1200-4.bmp"
'LOAD_SPRITE hadoken_ryu(6),"graphics/ryu/ryu1_1200-5.bmp"
'LOAD_SPRITE hadoken_ryu(7),"graphics/ryu/ryu1_1200-6.bmp"
'LOAD_SPRITE hadoken_ryu(8),"graphics/ryu/ryu1_1200-7.bmp"
'****
LOAD_SPRITE fireball(3),"graphics/ryu/ryu1_6110-0.bmp" 'frame 1 of traveling fireball
LOAD_SPRITE fireball(1),"graphics/ryu/ryu1_6100-1.bmp"
LOAD_SPRITE fireball(2),"graphics/ryu/ryu1_6100-2.bmp"
LOAD_SPRITE fireball(4),"graphics/ryu/ryu1_6100-7.bmp" 'frame 2 of traveling fireball
'LOAD_SPRITE fireball(5),"graphics/ryu/ryu1_6110-0.bmp"
'****
LOAD_SPRITE shoryuken_ryu(1),"graphics/ryu/ryu1_1000-0.bmp"
LOAD_SPRITE shoryuken_ryu(2),"graphics/ryu/ryu1_1000-1.bmp"
LOAD_SPRITE shoryuken_ryu(3),"graphics/ryu/ryu1_1000-2.bmp"
LOAD_SPRITE shoryuken_ryu(4),"graphics/ryu/ryu1_1000-3.bmp"
LOAD_SPRITE shoryuken_ryu(5),"graphics/ryu/ryu1_1000-4.bmp"
LOAD_SPRITE shoryuken_ryu(6),"graphics/ryu/ryu1_1000-5.bmp" 
LOAD_SPRITE shoryuken_ryu(7),"graphics/ryu/ryu1_41-0.bmp" 
'****    
case "FREE"
ImageDestroy standing_ryu(1).spritebuf   
ImageDestroy standing_ryu(2).spritebuf   
ImageDestroy standing_ryu(3).spritebuf   
ImageDestroy standing_ryu(4).spritebuf   
ImageDestroy standing_ryu(5).spritebuf   
ImageDestroy standing_ryu(6).spritebuf   
'****
ImageDestroy walkback_ryu(1).spritebuf   
ImageDestroy walkback_ryu(2).spritebuf   
ImageDestroy walkback_ryu(3).spritebuf  
ImageDestroy walkback_ryu(4).spritebuf   
ImageDestroy walkback_ryu(5).spritebuf   
ImageDestroy walkback_ryu(6).spritebuf   
'****
ImageDestroy walkforward_ryu(1).spritebuf   
ImageDestroy walkforward_ryu(2).spritebuf   
ImageDestroy walkforward_ryu(3).spritebuf   
ImageDestroy walkforward_ryu(4).spritebuf   
ImageDestroy walkforward_ryu(5).spritebuf   
ImageDestroy walkforward_ryu(6).spritebuf   
'****
ImageDestroy crouch_ryu(1).spritebuf   
ImageDestroy crouch_ryu(2).spritebuf   
ImageDestroy crouch_ryu(3).spritebuf   
'****
ImageDestroy jumping_ryu(1).spritebuf   
ImageDestroy jumping_ryu(2).spritebuf   
ImageDestroy jumping_ryu(3).spritebuf   
ImageDestroy jumping_ryu(4).spritebuf   
ImageDestroy jumping_ryu(5).spritebuf   
ImageDestroy jumping_ryu(6).spritebuf   
ImageDestroy jumping_ryu(7).spritebuf   
'****
ImageDestroy return_ryu(3).spritebuf   
ImageDestroy return_ryu(2).spritebuf   
ImageDestroy return_ryu(1).spritebuf   
'****
ImageDestroy jumpingforward_ryu(1).spritebuf   
ImageDestroy jumpingforward_ryu(2).spritebuf   
ImageDestroy jumpingforward_ryu(3).spritebuf   
ImageDestroy jumpingforward_ryu(4).spritebuf   
ImageDestroy jumpingforward_ryu(5).spritebuf   
ImageDestroy jumpingforward_ryu(6).spritebuf 
ImageDestroy jumpingforward_ryu(7).spritebuf 
ImageDestroy jumpingforward_ryu(8).spritebuf 
'****
ImageDestroy standingpunch_ryu(1).spritebuf   
ImageDestroy standingpunch_ryu(2).spritebuf   
ImageDestroy standingpunch_ryu(3).spritebuf   
'****
ImageDestroy crouchingpunch_ryu(1).spritebuf   
ImageDestroy crouchingpunch_ryu(2).spritebuf   
ImageDestroy crouchingpunch_ryu(3).spritebuf   
ImageDestroy crouchingpunch_ryu(4).spritebuf   
ImageDestroy crouchingpunch_ryu(5).spritebuf   
'****
ImageDestroy jumpingpunch_ryu(1).spritebuf   
ImageDestroy jumpingpunch_ryu(2).spritebuf   
ImageDestroy jumpingpunch_ryu(3).spritebuf   
'****
ImageDestroy standingkick_ryu(1).spritebuf   
ImageDestroy standingkick_ryu(2).spritebuf   
ImageDestroy standingkick_ryu(3).spritebuf   
'****
ImageDestroy crouchingkick_ryu(1).spritebuf   
ImageDestroy crouchingkick_ryu(2).spritebuf   
ImageDestroy crouchingkick_ryu(3).spritebuf   
ImageDestroy crouchingkick_ryu(4).spritebuf   
ImageDestroy crouchingkick_ryu(5).spritebuf   
'****
ImageDestroy jumpingkick_ryu(1).spritebuf   
ImageDestroy jumpingkick_ryu(2).spritebuf   
ImageDestroy jumpingkick_ryu(3).spritebuf 
ImageDestroy jumpingkick_ryu(4).spritebuf
ImageDestroy jumpingkick_ryu(5).spritebuf
'****
ImageDestroy hadoken_ryu(1).spritebuf   
ImageDestroy hadoken_ryu(2).spritebuf   
ImageDestroy hadoken_ryu(3).spritebuf   
ImageDestroy hadoken_ryu(4).spritebuf   
ImageDestroy hadoken_ryu(5).spritebuf   
ImageDestroy hadoken_ryu(6).spritebuf   
ImageDestroy hadoken_ryu(7).spritebuf   
ImageDestroy hadoken_ryu(8).spritebuf   
'****
ImageDestroy fireball(1).spritebuf   
ImageDestroy fireball(2).spritebuf   
ImageDestroy fireball(3).spritebuf   
ImageDestroy fireball(4).spritebuf   
'ImageDestroy fireball(5).spritebuf   
'****
ImageDestroy shoryuken_ryu(1).spritebuf   
ImageDestroy shoryuken_ryu(2).spritebuf   
ImageDestroy shoryuken_ryu(3).spritebuf   
ImageDestroy shoryuken_ryu(4).spritebuf   
ImageDestroy shoryuken_ryu(5).spritebuf   
ImageDestroy shoryuken_ryu(6).spritebuf  
ImageDestroy shoryuken_ryu(7).spritebuf 
'****     
case else
end select
if commandz="LC" then
else
last_command=commandz    
end if    
END SUB
'===============================================================================
'assumes the keyboard handler is already installed

SUB mb_kb_clear_p1t
'clear Player 1's keyboard buffer timers only
dim as integer i
ibuff_p1_c=1
for i=1 to 30
'kb_p1(i)=""
kts_p1(i)=0
next
END SUB

function hadoken_motion_check_p1 as integer
'this could also be a function to return if a hadoken motion    
'facing right
'mb_keyboard_buffer_sort  kts_p1(),kb_p1()
dim as integer i,i2,d,dd,f,a,hc
dim as double dt,ddt,ft,att,hct
d=0 'down
dd=0 'down diagnal down & forward at the same time
f=0 'forward
a=0 'a button
dt=0
ddt=0
ft=0
att=0
hc=0
hct=0
for i=1 to 27
if kb_p1(i)="40D" then 
if kb_p1(i+1)="39D" or kb_p1(i+1)="40U" then'and kts_p1(i+1)-kts_p1(i)<=.12 then
if kb_p1(i+2)="40U" or kb_p1(i+2)="39D" or kb_p1(i+2)="39U" then'and kts_p1(i+2)-kts_p1(i+1)<=.12 then
'if kb_p1(i+3)="39U" and kts_p1(i+3)-kts_p1(i+2)<=.12 then

for i2=i+3 to 30
if mid(kb_p1(i2),1,2)="83" then exit for
if mid(kb_p1(i2),1,2)="68" then exit for
if mid(kb_p1(i2),1,2)="90" then exit for
if mid(kb_p1(i2),1,2)="88" then exit for
if mid(kb_p1(i2),1,2)="67" then exit for
'make sure none of the other buttons were pressed after the hadoken motion
if mid(kb_p1(i2),1,2)="65" and kts_p1(i+2)-kts_p1(i+1)<=.12 then hc=1:hct=kts_p1(i2)-kts_p1(i2-1):exit for
next
if hc=1 and hct<=.2 then

mb_kb_clear_p1

hadoken_motion_check_p1=1
exit function
end if
end if
end if


else
    
end if    
next

hadoken_motion_check_p1=0
end function 


function shoryuken_motion_check_p1 as integer
'Upper Cut
'this could also be a function to return if a shoruyken motion      
'facing right
'mb_keyboard_buffer_sort  kts_p1(),kb_p1()
dim as integer i,i2,d,dd,f,a,hc
dim as double dt,ddt,ft,att,hct
d=0 'down
dd=0 'down diagnal down & forward at the same time
f=0 'forward
a=0 'a button
dt=0
ddt=0
ft=0
att=0
hc=0
hct=0
for i=1 to 27
if kb_p1(i)="39D" then 
if kb_p1(i+1)="40U" or kb_p1(i+1)="40D" then'and kts_p1(i+1)-kts_p1(i)<=.12 then
if kb_p1(i+2)="39D" or kb_p1(i+2)="39U" then'and kts_p1(i+2)-kts_p1(i+1)<=.12 then
'if kb_p1(i+3)="39U" and kts_p1(i+3)-kts_p1(i+2)<=.12 then

for i2=i+3 to 30
if mid(kb_p1(i2),1,2)="83" then exit for
if mid(kb_p1(i2),1,2)="68" then exit for
if mid(kb_p1(i2),1,2)="90" then exit for
if mid(kb_p1(i2),1,2)="88" then exit for
if mid(kb_p1(i2),1,2)="67" then exit for
'make sure none of the other buttons were pressed after the hadoken motion
if mid(kb_p1(i2),1,2)="65" and kts_p1(i+2)-kts_p1(i+1)<=.12 then hc=1:hct=kts_p1(i2)-kts_p1(i2-1):exit for
next
if hc=1 and hct<=.2 then

mb_kb_clear_p1

shoryuken_motion_check_p1=1
exit function
end if
end if
end if
'end if

else
    
end if    
next

shoryuken_motion_check_p1=0
end function




function shoryuken_motion_check_p1_old as integer
'Upper Cut
'this could also be a function to return if a shoruyken motion    
'facing right
'mb_keyboard_buffer_sort  kts_p1(),kb_p1()
dim as integer i,i2,d,dd,f,a,hc
dim as double dt,ddt,ft,att,hct
d=0 'down
dd=0 'down diagnal down & forward at the same time
f=0 'forward
a=0 'a button
dt=0
ddt=0
ft=0
att=0
hc=0
hct=0
for i=7 to 30
if kb_p1(i)="39U" then 
if kb_p1(i-1)="39D" or kb_p1(i-1)="40U" and kts_p1(i-1)-kts_p1(i)<=.3 then
if kb_p1(i-2)="40U" or kb_p1(i-2)="39D" and kts_p1(i-2)-kts_p1(i-1)<=.3 then
if kb_p1(i-3)="40D" and kts_p1(i-3)-kts_p1(i-2)<=.3 then
if kb_p1(i-4)="39U" and kts_p1(i-4)-kts_p1(i-3)<=.3 then  
if kb_p1(i-5)="39D" and kts_p1(i-5)-kts_p1(i-4)<=.3 then  
'mb_kb_clear_p1

'shoryuken_motion_check_p1=1
'exit function
for i2=i to 30
if mid(kb_p1(i2),1,2)="83" then exit for
if mid(kb_p1(i2),1,2)="68" then exit for
if mid(kb_p1(i2),1,2)="90" then exit for
if mid(kb_p1(i2),1,2)="88" then exit for
if mid(kb_p1(i2),1,2)="67" then exit for
'make sure none of the other buttons were pressed after the shoruyken motion
if mid(kb_p1(i2),1,2)="65" then hc=1:hct=kts_p1(i2)-kts_p1(i2-1):exit for
next
if hc=1 and hct<=.3 then

mb_kb_clear_p1

'shoryuken_motion_check_p1=1
exit function
end if
end if
end if
end if
end if
end if

else
    
end if    
next

'shoryuken_motion_check_p1=0 
end function 
'===============================================================================
SUB SOUND_RYU(commandz as string)
static as integer hWave(6),sound(6),lasts
dim i as integer
select case ucase(commandz)
case "LOAD"
LOAD_MP3_TO_MEM "sounds/SF_Swing.mp3",hWave(0),sound(0),@sound(0)
LOAD_MP3_TO_MEM "sounds/Hadoken1.mp3",hWave(1),sound(1),@sound(1)
LOAD_MP3_TO_MEM "sounds/Jumping.mp3",hWave(2),sound(2),@sound(2)
LOAD_MP3_TO_MEM "sounds/shoryuken.mp3",hWave(3),sound(3),@sound(3)
case "FREE"
for i=0 to 3
FREE_SOUND_MEMORY hWave(i)
next
case "SWING"
'STOP_SOUND sound(0)    
PLAY_SOUND_MC sound(0)  
lasts=0
case "HADOKEN"
STOP_SOUND sound(1)    
PLAY_SOUND sound(1) 
lasts=1
case "JUMPING"
'STOP_SOUND sound(2)    
PLAY_SOUND_MC sound(2) 
lasts=2
case "SHORYUKEN"
STOP_SOUND sound(3)    
PLAY_SOUND sound(3) 
lasts=3
case "STOP"
STOP_SOUND sound(lasts)    
case else
end select
END SUB
'===============================================================================
SUB CONTROL_P1_RYU(byref input_state as string,byref input_state2 as string,byref input_state3 as string)
static t as double
static fp as integer
static as string togk
static as string pk2
static i as integer
static p_keys(1 to 10) as integer 'previously pressed keys

'input_state2 directional output
'input_state3 button output

if fp=0 then t=timer
if fp=0 then fp=1

input_state="NOTHING"
'input_state2="NOTHING"
'input_state3="NOTHING"

if kcs_p1(7)=1 and kcs_p1(8)=1  then 'Jumping Back 
input_state="JUMPINGBACK"
input_state2=input_state  
exit sub
end if

if kcs_p1(7)=1 and kcs_p1(10)=1  then 'Jumping Forward 
'if kcs_p1(3)=1 then
input_state="JUMPINGFORWARD"
input_state2=input_state 
exit sub
end if

if kcs_p1(8)=1  then 'Pressing Left 
input_state="LEFT"
input_state2=input_state 
end if

if kcs_p1(10)=1  then 'Pressing Right 
input_state="RIGHT"
input_state2=input_state 
end if


if kcs_p1(7)=1  then 'Pressing Up 
if input_state<>"JUMPINGBACK" and input_state<>"JUMPINGFORWARD" then
input_state="JUMPING"
input_state2=input_state 
end if
end if

if kcs_p1(9)=1  then 'Pressing Down 
input_state="DOWN"
input_state2=input_state 
end if

pk2=kb_p1(30)
mb_keyboard_buffer_sort kts_p1(),kb_p1()

if hadoken_motion_check_p1=1 or kcs_p1(3)=1 then 'Hadoken Motion Check
mb_kb_clear_p1
input_state="HADOKEN"
exit sub
end if

if shoryuken_motion_check_p1=1 or kcs_p1(4)=1 then 'Shoryuken Motion Check
mb_kb_clear_p1 
input_state="SHORYUKEN"
exit sub
end if


if kcs_p1(9)=1 and kcs_p1(1)=1  then 'Crouching Punch 
if kcs_p1(1)=1 and p_keys(1)=0 then input_state="CROUCHINGPUNCH":p_keys(1)=1:input_state2="DOWN":input_state3="PUNCH"  
if kcs_p1(1)=0 and p_keys(1)=1 then p_keys(1)=0 
exit sub
end if

if kcs_p1(9)=1 and kcs_p1(2)=1  then 'Crouching Kick 
if kcs_p1(2)=1 and p_keys(2)=0 then input_state="CROUCHINGKICK":p_keys(2)=1:input_state2="DOWN":input_state3="KICK"
if kcs_p1(2)=0 and p_keys(2)=1 then p_keys(2)=0 
exit sub
end if


if kcs_p1(1)=1 and p_keys(1)=0 then input_state="PUNCH":p_keys(1)=1:input_state3="PUNCH"'Punch
if kcs_p1(1)=0 and p_keys(1)=1 then p_keys(1)=0:input_state3="PUNCH_RELEASE"    
    
if kcs_p1(2)=1 and p_keys(2)=0 then input_state="KICK":p_keys(2)=1:input_state3="KICK"'Kick
if kcs_p1(2)=0 and p_keys(2)=1 then p_keys(2)=0:input_state3="KICK_RELEASE"

END SUB
'===============================================================================
SUB JUMPING_FORWARD_RYU(byref rx as integer,byref ry as integer,byref input_status as string,byref i_state as string,byref d_state as string,byref current_frame as integer,byref new_state as string,input_statez as string,input_statez2 as string,input_statez3 as string,t_array() as string)
static count as integer
static i_state2 as string
static t as double
static t2 as double
dim frame_delay(1 to 10) as double
frame_delay(1)=.05
frame_delay(2)=.05
frame_delay(3)=.05
frame_delay(4)=.05
frame_delay(5)=.05
frame_delay(6)=.05
frame_delay(7)=.05
frame_delay(8)=.05
frame_delay(9)=.05
frame_delay(10)=.05
static jumping_distance as integer
static rf as string 'Rise and Fall status
static input_status2 as string
static new_state2 as string
static wall2 as integer

dim ground as integer
ground=300 'Y Axis location of the ground
static distance_increment1 as integer
static distance_increment2 as integer
static total_movement as integer
static upward as integer
static downward as integer
static dbf as integer 'Y axis distance before ground, at or below this a punch or kick is no longer allowed when falling
static min_d as integer 'Y axis minimum distance above ground to punch or kick when falling
static efc as integer 'extra frame counter for falling animation frames
dbf=300-ry

if d_state="ON GROUND" and input_status="ON" then
'Initialize Jump
d_state="IN AIR"
input_status="OFF"
count=0
'i_state2="RISING"
i_state2=""
new_state=""
new_state2=""
t=timer
t2=timer
jumping_distance=300 '300 Pixels Up
distance_increment1=1 'X Axis increment
distance_increment2=2 'Y Axis increment
total_movement=int((jumping_distance/distance_increment2)*2) 'It is always times 2 because half of the movement is going up and half is going back down
upward=int(total_movement/4)
downward=(upward+1)
min_d=40
efc=1
wall2=610
end if



if d_state="IN AIR" and count>=1 and count<upward then
'Rising
rf="RISING"
current_frame=1
if (timer-t)>=.004 then
input_status="OFF"
count=count+1
t=timer
rx=rx+distance_increment1
ry=ry-distance_increment2
if rx>wall2 then rx=wall2
end if
end if 

if d_state="IN AIR" and (upward-count)<=20 and count<upward then current_frame=2:efc=2


if d_state="IN AIR" and count>=upward and dbf>1 then'and dbf>min_d then'count<150 then
'Falling
'current_frame=7
rf="FALLING"
if (timer-t2)>=frame_delay(efc) then
t2=timer
efc=efc+1
if efc>7 then efc=7
end if    
current_frame=efc
if (timer-t)>=.004 then
input_status="OFF"
count=count+1
t=timer
rx=rx+distance_increment1
ry=ry+distance_increment2
if rx>wall2 then rx=wall2
end if
end if



if d_state="IN AIR" and count=0 and rf="" then
'Begin Jump
current_frame=1

SOUND_RYU "JUMPING"
input_status="OFF"
count=count+1

rf="RISING"
end if    

if d_state="IN AIR" and dbf<=1 then
current_frame=8
if (timer-t)>=.1 then
input_status="ON"
count=0
t=timer
ry=ground
d_state="ON GROUND"
i_state=""
new_state=""
input_statez2=""
input_statez3=""
rf=""
end if
end if

if new_state2="" and d_state="IN AIR" then
if d_state="IN AIR" and rf="RISING" then input_status2="ON"
if d_state="IN AIR" and rf="FALLING" and dbf>min_d then input_status2="ON"
if d_state="IN AIR" and rf="FALLING" and dbf<min_d then input_status2="OFF"


if input_statez3="PUNCH" and input_status2="ON" then
new_state2="PUNCHJF"
SOUND_RYU "SWING"
new_state=new_state2
t_array(1)=str(count)
t_array(2)=rf
t_array(3)=str(upward)
t_array(4)=str(downward)
t_array(5)="STARTJFP"
t_array(6)=str(efc)
end if

if input_statez3="KICK" and input_status2="ON" then
new_state2="KICKJF"
SOUND_RYU "JUMPING"
new_state=new_state2
t_array(1)=str(count)
t_array(2)=rf
t_array(3)=str(upward)
t_array(4)=str(downward)
t_array(5)="STARTJFK"
t_array(6)=str(efc)
end if

end if


END SUB
'===============================================================================
SUB JUMPING_BACK_RYU(byref rx as integer,byref ry as integer,byref input_status as string,byref i_state as string,byref d_state as string,byref current_frame as integer,byref new_state as string,input_statez as string,input_statez2 as string,input_statez3 as string,t_array() as string)
static count as integer
static i_state2 as string
static t as double
static t2 as double
dim frame_delay(1 to 10) as double
frame_delay(1)=.05
frame_delay(2)=.05
frame_delay(3)=.05
frame_delay(4)=.05
frame_delay(5)=.05
frame_delay(6)=.05
frame_delay(7)=.05
frame_delay(8)=.05
frame_delay(9)=.05
frame_delay(10)=.05
static jumping_distance as integer
static rf as string 'Rise and Fall status
static input_status2 as string
static new_state2 as string
static wall2 as integer

dim ground as integer
ground=300 'Y Axis location of the ground
static distance_increment1 as integer
static distance_increment2 as integer
static total_movement as integer
static upward as integer
static downward as integer
static dbf as integer 'Y axis distance before ground, at or below this a punch or kick is no longer allowed when falling
static min_d as integer 'Y axis minimum distance above ground to punch or kick when falling
static efc as integer 'extra frame counter for falling animation frames
dbf=300-ry

if d_state="ON GROUND" and input_status="ON" then
'Initialize Jump
d_state="IN AIR"
input_status="OFF"
count=0

i_state2=""
new_state=""
new_state2=""
t=timer
t2=timer
jumping_distance=300 '300 Pixels Up
distance_increment1=1 'X Axis increment
distance_increment2=2 'Y Axis increment
total_movement=int((jumping_distance/distance_increment2)*2) 'It is always times 2 because half of the movement is going up and half is going back down
upward=int(total_movement/4)
downward=(upward+1)
min_d=40
efc=1
wall2=20
end if



if d_state="IN AIR" and count>=1 and count<upward then
'Rising
rf="RISING"
current_frame=1
if (timer-t)>=.004 then
input_status="OFF"
count=count+1
t=timer
rx=rx-distance_increment1
ry=ry-distance_increment2
if rx<wall2 then rx=wall2
end if
end if 

if d_state="IN AIR" and (upward-count)<=20 and count<upward then current_frame=2:efc=2


if d_state="IN AIR" and count>=upward and dbf>1 then
'Falling
rf="FALLING"
if (timer-t2)>=frame_delay(efc) then
t2=timer
efc=efc+1
if efc>7 then efc=7
end if    
current_frame=efc
if (timer-t)>=.004 then
input_status="OFF"
count=count+1
t=timer
rx=rx-distance_increment1
ry=ry+distance_increment2
if rx<wall2 then rx=wall2
end if
end if



if d_state="IN AIR" and count=0 and rf="" then
'Begin Jump
current_frame=1

SOUND_RYU "JUMPING"
input_status="OFF"
count=count+1

rf="RISING"
end if    

if d_state="IN AIR" and dbf<=1 then
current_frame=8
if (timer-t)>=.1 then
input_status="ON"
count=0
t=timer
ry=ground
d_state="ON GROUND"
i_state=""
new_state=""
input_statez2=""
input_statez3=""
rf=""
end if
end if

if new_state2="" and d_state="IN AIR" then
if d_state="IN AIR" and rf="RISING" then input_status2="ON"
if d_state="IN AIR" and rf="FALLING" and dbf>min_d then input_status2="ON"
if d_state="IN AIR" and rf="FALLING" and dbf<min_d then input_status2="OFF"


if input_statez3="PUNCH" and input_status2="ON" then
new_state2="PUNCHJB"
SOUND_RYU "SWING"
new_state=new_state2
t_array(1)=str(count)
t_array(2)=rf
t_array(3)=str(upward)
t_array(4)=str(downward)
t_array(5)="STARTJBP"
t_array(6)=str(efc)
end if

if input_statez3="KICK" and input_status2="ON" then
new_state2="KICKJB"
SOUND_RYU "JUMPING"
new_state=new_state2
t_array(1)=str(count)
t_array(2)=rf
t_array(3)=str(upward)
t_array(4)=str(downward)
t_array(5)="STARTJBK"
t_array(6)=str(efc)
end if

end if


END SUB
'===============================================================================
SUB JUMPING_RYU(byref rx as integer,byref ry as integer,byref input_status as string,byref i_state as string,byref d_state as string,byref current_frame as integer,byref new_state as string,input_statez as string,input_statez2 as string,input_statez3 as string,t_array() as string)
static count as integer
static i_state2 as string
static t as double
static t2 as double
dim frame_delay(1 to 10) as double
frame_delay(1)=.1
frame_delay(2)=.1
frame_delay(3)=.2
frame_delay(4)=.2
frame_delay(5)=.05
frame_delay(6)=.03
frame_delay(7)=0
frame_delay(8)=.1
frame_delay(9)=.1
frame_delay(10)=.1
static jumping_distance as integer
static rf as string 'Rise and Fall status
static input_status2 as string
static new_state2 as string

dim ground as integer
ground=300 'Y Axis location of the ground
static distance_increment as integer
static total_movement as integer
static upward as integer
static downward as integer
static dbf as integer 'Y axis distance before ground, at or below this a punch or kick is no longer allowed when falling
static min_d as integer 'Y axis minimum distance above ground to punch or kick when falling
static efc as integer 'extra frame counter for falling animation frames
dbf=300-ry

if d_state="ON GROUND" and input_status="ON" then
'Initialize Jump
d_state="IN AIR"
input_status="OFF"
count=0

i_state2=""
new_state=""
new_state2=""
t=timer
t2=timer
jumping_distance=300 '300 Pixels Up
distance_increment=2 'Y Axis increment
total_movement=int((jumping_distance/distance_increment)*2) 'It is always times 2 because half of the movement is going up and half is going back down
upward=int(total_movement/4)
downward=(upward+1)
min_d=40
efc=2
end if



if d_state="IN AIR" and count>=1 and count<upward then
'Rising
rf="RISING"
current_frame=2
if (timer-t)>=.004 then
input_status="OFF"
count=count+1
t=timer
ry=ry-distance_increment
end if
end if 

if d_state="IN AIR" and (upward-count)<=20 and count<upward then current_frame=3:efc=3


if d_state="IN AIR" and count>=upward and dbf>1 then
'Falling

rf="FALLING"
if (timer-t2)>=frame_delay(efc) then
t2=timer
efc=efc+1
if efc>7 then efc=7
end if    
current_frame=efc
if (timer-t)>=.004 then
input_status="OFF"
count=count+1
t=timer
ry=ry+distance_increment
end if
end if



if d_state="IN AIR" and count=0 and rf="" then
'Begin Jump
current_frame=1

SOUND_RYU "JUMPING"
input_status="OFF"
count=count+1

rf="RISING"
end if    

if d_state="IN AIR" and dbf<=1 then
current_frame=1
if (timer-t)>=.1 then
input_status="ON"
count=0
t=timer
ry=ground
d_state="ON GROUND"
i_state=""
new_state=""
input_statez2=""
input_statez3=""
rf=""
end if
end if

if new_state2="" and d_state="IN AIR" then
if d_state="IN AIR" and rf="RISING" then input_status2="ON"
if d_state="IN AIR" and rf="FALLING" and dbf>min_d then input_status2="ON"
if d_state="IN AIR" and rf="FALLING" and dbf<min_d then input_status2="OFF"


if input_statez3="PUNCH" and input_status2="ON" then
new_state2="PUNCH"
SOUND_RYU "SWING"
new_state=new_state2
t_array(1)=str(count)
t_array(2)=rf
t_array(3)=str(upward)
t_array(4)=str(downward)
t_array(5)="STARTP"
t_array(6)=str(efc)
end if

if input_statez3="KICK" and input_status2="ON" then
new_state2="KICK"
SOUND_RYU "JUMPING"
new_state=new_state2
t_array(1)=str(count)
t_array(2)=rf
t_array(3)=str(upward)
t_array(4)=str(downward)
t_array(5)="STARTK"
t_array(6)=str(efc)
end if

end if


END SUB
'===============================================================================
SUB JUMPING_FORWARD_PUNCH_RYU(byref rx as integer,byref ry as integer,byref input_status as string,byref i_state as string,byref d_state as string,byref current_frame as integer,byref new_state as string,byref input_statez as string,byref input_statez2 as string,byref input_statez3 as string,t_array() as string)
static count as integer
static i_state2 as string
static t as double
static t2 as double
dim frame_delay(1 to 10) as double
dim frame_delay2(1 to 10) as double
frame_delay(1)=.05
frame_delay(2)=.05
frame_delay(3)=.05
frame_delay(4)=.05
frame_delay(5)=.05
frame_delay(6)=.05
frame_delay(7)=.05
frame_delay(8)=.05
frame_delay(9)=.05
frame_delay(10)=.05

frame_delay2(1)=.1
frame_delay2(2)=.2
frame_delay2(3)=.1

static jumping_distance as integer
static rf as string 'Rise and Fall status
static input_status2 as string
static new_state2 as string
static wall2 as integer

dim ground as integer
ground=300 'Y Axis location of the ground
static distance_increment1 as integer
static distance_increment2 as integer
static total_movement as integer
static upward as integer
static downward as integer
static dbf as integer 'Y axis distance before ground, at or below this a punch or kick is no longer allowed when falling
static min_d as integer 'Y axis minimum distance above ground to punch or kick when falling
static efc as integer 'extra frame counter for falling animation frames
dbf=300-ry

static true_frame as integer
static t3 as double


'Initialize Jump

jumping_distance=300 '300 Pixels Up
distance_increment1=1 'X Axis increment
distance_increment2=2 'Y Axis increment

min_d=40

wall2=610


static sn as string


if t_array(5)="STARTJFP" or sn="" then 

count=0
i_state2=""
new_state="PUNCHJF"
new_state2=""
d_state="IN AIR"
input_status="OFF"
count=val(t_array(1))
rf=t_array(2)

if rf="" then rf="RISING"
i_state2=""

t=timer
t2=timer
t3=timer
jumping_distance=300 '300 Pixels Up
distance_increment2=2 'Y Axis increment
total_movement=int((jumping_distance/distance_increment2)*2) 'It is always times 2 because half of the movement is going up and half is going back down
upward=int(total_movement/4)
downward=(upward+1)
min_d=40
efc=2
true_frame=1
t_array(5)="PUNCHJF"
sn="S"

end if


if count<upward then rf="RISING"
if count>=upward then rf="FALLING"

if rf="RISING" and count<upward then
'Rising

current_frame=1
if (timer-t)>=.004 then
input_status="OFF"
count=count+1
t=timer

rx=rx+distance_increment1
ry=ry-distance_increment2
if rx>wall2 then rx=wall2

end if
end if



if rf="FALLING" and count>=upward and dbf>1 then
'Rising

current_frame=7
if (timer-t)>=.004 then

input_status="OFF"
count=count+1
t=timer

rx=rx+distance_increment1
ry=ry+distance_increment2
if rx>wall2 then rx=wall2
end if
end if


if true_frame<=3 then
current_frame=true_frame    
if (timer-t3)>=frame_delay2(true_frame) then
current_frame=true_frame
t3=timer
true_frame=true_frame+1
efc=2
end if
end if



if true_frame>3 and rf="RISING" then current_frame=1:d_state="IN AIR"
if true_frame>3 and rf="FALLING" then current_frame=7:d_state="IN AIR"

if dbf<=1 then

current_frame=8
if (timer-t)>=.1 then
input_status="ON"
count=0
t=timer
ry=ground
d_state="ON GROUND"
i_state=""
new_state="RETURN"
input_statez2=""
input_statez3=""
rf=""
t_array(5)=""
sn=""
end if
end if



END SUB
'===============================================================================
SUB JUMPING_BACK_PUNCH_RYU(byref rx as integer,byref ry as integer,byref input_status as string,byref i_state as string,byref d_state as string,byref current_frame as integer,byref new_state as string,byref input_statez as string,byref input_statez2 as string,byref input_statez3 as string,t_array() as string)
static count as integer
static i_state2 as string
static t as double
static t2 as double
dim frame_delay(1 to 10) as double
dim frame_delay2(1 to 10) as double
frame_delay(1)=.05
frame_delay(2)=.05
frame_delay(3)=.05
frame_delay(4)=.05
frame_delay(5)=.05
frame_delay(6)=.05
frame_delay(7)=.05
frame_delay(8)=.05
frame_delay(9)=.05
frame_delay(10)=.05

frame_delay2(1)=.1
frame_delay2(2)=.2
frame_delay2(3)=.1

static jumping_distance as integer
static rf as string 'Rise and Fall status
static input_status2 as string
static new_state2 as string
static wall2 as integer

dim ground as integer
ground=300 'Y Axis location of the ground
static distance_increment1 as integer
static distance_increment2 as integer
static total_movement as integer
static upward as integer
static downward as integer
static dbf as integer 'Y axis distance before ground, at or below this a punch or kick is no longer allowed when falling
static min_d as integer 'Y axis minimum distance above ground to punch or kick when falling
static efc as integer 'extra frame counter for falling animation frames
dbf=300-ry

static true_frame as integer
static t3 as double


'Initialize Jump

jumping_distance=300 '300 Pixels Up
distance_increment1=1 'X Axis increment
distance_increment2=2 'Y Axis increment

min_d=40

wall2=10


static sn as string


if t_array(5)="STARTJBP" or sn="" then 

count=0
i_state2=""
new_state="PUNCHJB"
new_state2=""
d_state="IN AIR"
input_status="OFF"
count=val(t_array(1))
rf=t_array(2)

if rf="" then rf="RISING"
i_state2=""

t=timer
t2=timer
t3=timer
jumping_distance=300 '300 Pixels Up
distance_increment2=2 'Y Axis increment
total_movement=int((jumping_distance/distance_increment2)*2) 'It is always times 2 because half of the movement is going up and half is going back down
upward=int(total_movement/4)
downward=(upward+1)
min_d=40
efc=2
true_frame=1
t_array(5)="PUNCHJB"
sn="S"

end if

  
if count<upward then rf="RISING"
if count>=upward then rf="FALLING"

if rf="RISING" and count<upward then

current_frame=1
if (timer-t)>=.004 then
input_status="OFF"
count=count+1
t=timer

rx=rx-distance_increment1
ry=ry-distance_increment2
if rx<wall2 then rx=wall2

end if
end if



if rf="FALLING" and count>=upward and dbf>1 then
'Rising

current_frame=7
if (timer-t)>=.004 then

input_status="OFF"
count=count+1
t=timer

rx=rx-distance_increment1
ry=ry+distance_increment2
if rx<wall2 then rx=wall2
end if
end if


if true_frame<=3 then
current_frame=true_frame    
if (timer-t3)>=frame_delay2(true_frame) then
current_frame=true_frame
t3=timer
true_frame=true_frame+1
efc=2
end if
end if



if true_frame>3 and rf="RISING" then current_frame=1:d_state="IN AIR"
if true_frame>3 and rf="FALLING" then current_frame=7:d_state="IN AIR"

if dbf<=1 then

current_frame=8
if (timer-t)>=.1 then
input_status="ON"
count=0
t=timer
ry=ground
d_state="ON GROUND"
i_state=""
new_state="RETURN"
input_statez2=""
input_statez3=""
rf=""
t_array(5)=""
sn=""
end if
end if


END SUB
'===============================================================================
SUB JUMPING_FORWARD_KICK_RYU(byref rx as integer,byref ry as integer,byref input_status as string,byref i_state as string,byref d_state as string,byref current_frame as integer,byref new_state as string,byref input_statez as string,byref input_statez2 as string,byref input_statez3 as string,t_array() as string)
static count as integer
static i_state2 as string
static t as double
static t2 as double
dim frame_delay(1 to 10) as double
dim frame_delay2(1 to 10) as double
frame_delay(1)=.05
frame_delay(2)=.05
frame_delay(3)=.05
frame_delay(4)=.05
frame_delay(5)=.05
frame_delay(6)=.05
frame_delay(7)=.05
frame_delay(8)=.05
frame_delay(9)=.05
frame_delay(10)=.05

frame_delay2(1)=.1
frame_delay2(2)=.2
frame_delay2(3)=.1

static jumping_distance as integer
static rf as string 'Rise and Fall status
static input_status2 as string
static new_state2 as string
static wall2 as integer

dim ground as integer
ground=300 'Y Axis location of the ground
static distance_increment1 as integer
static distance_increment2 as integer
static total_movement as integer
static upward as integer
static downward as integer
static dbf as integer 'Y axis distance before ground, at or below this a punch or kick is no longer allowed when falling
static min_d as integer 'Y axis minimum distance above ground to punch or kick when falling
static efc as integer 'extra frame counter for falling animation frames
dbf=300-ry

static true_frame as integer
static t3 as double



jumping_distance=300 '300 Pixels Up
distance_increment1=1 'X Axis increment
distance_increment2=2 'Y Axis increment

min_d=40

wall2=610


static sn as string


if t_array(5)="STARTJFK" or sn="" then 

'Initialize Jump
count=0
i_state2=""
new_state="KICKJF"
new_state2=""
d_state="IN AIR"
input_status="OFF"
count=val(t_array(1))
rf=t_array(2)

if rf="" then rf="RISING"
i_state2=""

t=timer
t2=timer
t3=timer
jumping_distance=300 '300 Pixels Up
distance_increment2=2 'Y Axis increment
total_movement=int((jumping_distance/distance_increment2)*2) 'It is always times 2 because half of the movement is going up and half is going back down
upward=int(total_movement/4)
downward=(upward+1)
min_d=40
efc=2
true_frame=1
t_array(5)="KICKJF"
sn="S"

end if

 
if count<upward then rf="RISING"
if count>=upward then rf="FALLING"

if rf="RISING" and count<upward then

current_frame=1
if (timer-t)>=.004 then
input_status="OFF"
count=count+1
t=timer

rx=rx+distance_increment1
ry=ry-distance_increment2
if rx>wall2 then rx=wall2

end if
end if



if rf="FALLING" and count>=upward and dbf>1 then
'Rising

current_frame=7
if (timer-t)>=.004 then

input_status="OFF"
count=count+1
t=timer

rx=rx+distance_increment1
ry=ry+distance_increment2
if rx>wall2 then rx=wall2
end if
end if


if true_frame<=3 then
current_frame=true_frame    
if (timer-t3)>=frame_delay2(true_frame) then
current_frame=true_frame
t3=timer
true_frame=true_frame+1
efc=2
end if
end if



if true_frame>3 and rf="RISING" then current_frame=1:d_state="IN AIR"
if true_frame>3 and rf="FALLING" then current_frame=7:d_state="IN AIR"

if dbf<=1 then

current_frame=8
if (timer-t)>=.1 then
input_status="ON"
count=0
t=timer
ry=ground
d_state="ON GROUND"
i_state=""
new_state="RETURN"
input_statez2=""
input_statez3=""
rf=""
t_array(5)=""
sn=""
end if
end if


END SUB
'===============================================================================
SUB JUMPING_BACK_KICK_RYU(byref rx as integer,byref ry as integer,byref input_status as string,byref i_state as string,byref d_state as string,byref current_frame as integer,byref new_state as string,byref input_statez as string,byref input_statez2 as string,byref input_statez3 as string,t_array() as string)
static count as integer
static i_state2 as string
static t as double
static t2 as double
dim frame_delay(1 to 10) as double
dim frame_delay2(1 to 10) as double
frame_delay(1)=.05
frame_delay(2)=.05
frame_delay(3)=.05
frame_delay(4)=.05
frame_delay(5)=.05
frame_delay(6)=.05
frame_delay(7)=.05
frame_delay(8)=.05
frame_delay(9)=.05
frame_delay(10)=.05

frame_delay2(1)=.1
frame_delay2(2)=.2
frame_delay2(3)=.1

static jumping_distance as integer
static rf as string 'Rise and Fall status
static input_status2 as string
static new_state2 as string
static wall2 as integer

dim ground as integer
ground=300 'Y Axis location of the ground
static distance_increment1 as integer
static distance_increment2 as integer
static total_movement as integer
static upward as integer
static downward as integer
static dbf as integer 'Y axis distance before ground, at or below this a punch or kick is no longer allowed when falling
static min_d as integer 'Y axis minimum distance above ground to punch or kick when falling
static efc as integer 'extra frame counter for falling animation frames
dbf=300-ry

static true_frame as integer
static t3 as double



jumping_distance=300 '300 Pixels Up
distance_increment1=1 'X Axis increment
distance_increment2=2 'Y Axis increment

min_d=40

wall2=10


static sn as string


if t_array(5)="STARTJBK" or sn="" then 

'Initialize Jump
count=0
i_state2=""
new_state="KICKJB"
new_state2=""
d_state="IN AIR"
input_status="OFF"
count=val(t_array(1))
rf=t_array(2)

if rf="" then rf="RISING"
i_state2=""

t=timer
t2=timer
t3=timer
jumping_distance=300 '300 Pixels Up
distance_increment2=2 'Y Axis increment
total_movement=int((jumping_distance/distance_increment2)*2) 'It is always times 2 because half of the movement is going up and half is going back down
upward=int(total_movement/4)
downward=(upward+1)
min_d=40
efc=2
true_frame=1
t_array(5)="KICKJB"
sn="S"

end if

 
if count<upward then rf="RISING"
if count>=upward then rf="FALLING"

if rf="RISING" and count<upward then

current_frame=1
if (timer-t)>=.004 then
input_status="OFF"
count=count+1
t=timer

rx=rx-distance_increment1
ry=ry-distance_increment2
if rx<wall2 then rx=wall2

end if
end if



if rf="FALLING" and count>=upward and dbf>1 then
'Rising

current_frame=7
if (timer-t)>=.004 then

input_status="OFF"
count=count+1
t=timer

rx=rx-distance_increment1
ry=ry+distance_increment2
if rx<wall2 then rx=wall2
end if
end if


if true_frame<=3 then
current_frame=true_frame    
if (timer-t3)>=frame_delay2(true_frame) then
current_frame=true_frame
t3=timer
true_frame=true_frame+1
efc=2
end if
end if



if true_frame>3 and rf="RISING" then current_frame=1:d_state="IN AIR"
if true_frame>3 and rf="FALLING" then current_frame=7:d_state="IN AIR"

if dbf<=1 then

current_frame=8
if (timer-t)>=.1 then
input_status="ON"
count=0
t=timer
ry=ground
d_state="ON GROUND"
i_state=""
new_state="RETURN"
input_statez2=""
input_statez3=""
rf=""
t_array(5)=""
sn=""
end if
end if


END SUB
'=============================================================================== 
SUB JUMPING_PUNCH_RYU(byref rx as integer,byref ry as integer,byref input_status as string,byref i_state as string,byref d_state as string,byref current_frame as integer,byref new_state as string,byref input_statez as string,byref input_statez2 as string,byref input_statez3 as string,t_array() as string)
static count as integer
static i_state2 as string
static t as double
static t2 as double
dim frame_delay(1 to 10) as double
dim frame_delay2(1 to 10) as double
frame_delay(1)=.1
frame_delay(2)=.1
frame_delay(3)=.2
frame_delay(4)=.2
frame_delay(5)=.05
frame_delay(6)=.03
frame_delay(7)=0
frame_delay(8)=.1
frame_delay(9)=.1
frame_delay(10)=.1

frame_delay2(1)=.1
frame_delay2(2)=.2
frame_delay2(3)=.1

static true_frame as integer

static jumping_distance as integer
static rf as string 'Rise and Fall status
static input_status2 as string
static new_state2 as string
static t3 as double

dim ground as integer
ground=300 'Y Axis location of the ground
static distance_increment as integer
static total_movement as integer
static upward as integer
static downward as integer
static dbf as integer 'Y axis distance before ground, at or below this a punch or kick is no longer allowed when falling
static min_d as integer 'Y axis minimum distance above ground to punch or kick when falling
static efc as integer 'extra frame counter for falling animation frames
dbf=300-ry
static sn as string


if t_array(5)="STARTP" and sn="" then 

'Initialize Jump
d_state="IN AIR"
input_status="OFF"
count=val(t_array(1))
rf=t_array(2)

if rf="" then rf="RISING"
i_state2=""

t=timer
t2=timer
t3=timer
jumping_distance=300 '300 Pixels Up
distance_increment=2 'Y Axis increment
total_movement=int((jumping_distance/distance_increment)*2) 'It is always times 2 because half of the movement is going up and half is going back down
upward=int(total_movement/4)
downward=(upward+1)
min_d=40
efc=2
true_frame=1
t_array(5)="PUNCH"

end if



if rf="RISING" and count<upward then
'Rising
current_frame=2
if (timer-t)>=.004 then
input_status="OFF"
count=count+1
t=timer
ry=ry-distance_increment
end if
end if

if count>=upward then rf="FALLING"

if rf="FALLING" and count>=upward and dbf>1 then
'Rising
current_frame=2
if (timer-t)>=.004 then
input_status="OFF"
count=count+1
t=timer
ry=ry+distance_increment
end if
end if


if true_frame<=3 then
current_frame=true_frame    
if (timer-t3)>=frame_delay2(true_frame) then
current_frame=true_frame
t3=timer
true_frame=true_frame+1
efc=2
end if
end if


if true_frame>3 then
t_array(5)="JUMPING"    
if (timer-t2)>=frame_delay(efc) then
t2=timer
efc=efc+1
if efc>7 then efc=7
end if    
current_frame=efc

end if

if d_state="IN AIR" and dbf<=1 and rf="FALLING" then
current_frame=1
if (timer-t)>=.1 then
input_status="ON"
count=0
t=timer
ry=ground
d_state="ON GROUND"
i_state=""
new_state="RETURN"
input_statez2=""
input_statez3=""
rf=""
t_array(5)=""
end if
end if


END SUB
'===============================================================================
SUB JUMPING_KICK_RYU(byref rx as integer,byref ry as integer,byref input_status as string,byref i_state as string,byref d_state as string,byref current_frame as integer,byref new_state as string,byref input_statez as string,byref input_statez2 as string,byref input_statez3 as string,t_array() as string)
static count as integer
static i_state2 as string
static t as double
static t2 as double
dim frame_delay(1 to 10) as double
dim frame_delay2(1 to 10) as double
frame_delay(1)=.1
frame_delay(2)=.1
frame_delay(3)=.2
frame_delay(4)=.2
frame_delay(5)=.05
frame_delay(6)=.03
frame_delay(7)=0
frame_delay(8)=.1
frame_delay(9)=.1
frame_delay(10)=.1

frame_delay2(1)=.05
frame_delay2(2)=.05
frame_delay2(3)=.1
frame_delay2(4)=.05
frame_delay2(4)=.05

static true_frame as integer

static jumping_distance as integer
static rf as string 'Rise and Fall status
static input_status2 as string
static new_state2 as string
static t3 as double

dim ground as integer
ground=300 'Y Axis location of the ground
static distance_increment as integer
static total_movement as integer
static upward as integer
static downward as integer
static dbf as integer 'Y axis distance before ground, at or below this a punch or kick is no longer allowed when falling
static min_d as integer 'Y axis minimum distance above ground to punch or kick when falling
static efc as integer 'extra frame counter for falling animation frames
dbf=300-ry
static sn as string

if t_array(5)="STARTK" and sn="" then 

'Initialize Jump
d_state="IN AIR"
input_status="OFF"
count=val(t_array(1))
rf=t_array(2)

if rf="" then rf="RISING"
i_state2=""

t=timer
t2=timer
t3=timer
jumping_distance=300 '300 Pixels Up
distance_increment=2 'Y Axis increment
total_movement=int((jumping_distance/distance_increment)*2) 'It is always times 2 because half of the movement is going up and half is going back down
upward=int(total_movement/4)
downward=(upward+1)
min_d=40
efc=2
true_frame=1
t_array(5)="KICK"
'sn="S"
end if


if rf="RISING" and count<upward then
'Rising

current_frame=2
if (timer-t)>=.004 then
input_status="OFF"
count=count+1
t=timer
ry=ry-distance_increment
end if
end if

if count>=upward then rf="FALLING"

if rf="FALLING" and count>=upward and dbf>1 then
'Rising
current_frame=2
if (timer-t)>=.004 then
input_status="OFF"
count=count+1
t=timer
ry=ry+distance_increment
end if
end if


if true_frame<=5 then
current_frame=true_frame    
if (timer-t3)>=frame_delay2(true_frame) then
current_frame=true_frame
t3=timer
true_frame=true_frame+1
efc=2
end if
end if


if true_frame>5 then
t_array(5)="JUMPING"    
if (timer-t2)>=frame_delay(efc) then
t2=timer
efc=efc+1
if efc>7 then efc=7
end if    
current_frame=efc

end if

if d_state="IN AIR" and dbf<=1 and rf="FALLING" then
current_frame=1
if (timer-t)>=.1 then
input_status="ON"
count=0
t=timer
ry=ground
d_state="ON GROUND"
i_state=""
new_state="RETURN"
input_statez2=""
input_statez3=""
rf=""
t_array(5)=""
end if
end if


END SUB
'===============================================================================
SUB HADOKEN_RYU(byref rx as integer,byref ry as integer,byref hx1 as integer,byref hy1 as integer,byref current_frame as integer,byref fireball_frame as integer,byref new_state3 as string,byref hadoken_active as string,byref input_active as string)
static current_frame1 as integer
static true_frame as integer
static fireball_xinc as integer
fireball_xinc=2 'X Axis increment for fireball
static t as double
static t2 as double
dim frame_delay(1 to 10) as double
dim frame_delay2(1 to 10) as double
frame_delay(1)=.1
frame_delay(2)=.1
frame_delay(3)=.1
frame_delay(4)=.1
frame_delay(5)=.2
frame_delay(6)=.2
frame_delay(7)=.2
frame_delay(8)=.2
frame_delay(9)=.2
frame_delay(10)=.2

frame_delay2(1)=.15
frame_delay2(2)=.1
frame_delay2(3)=.05
frame_delay2(4)=.05

if new_state3="" then
new_state3="HADOKEN"
t=timer
current_frame1=1
true_frame=1
fireball_frame=1
hx1=rx+110
hy1=ry+12
input_active="NO"
end if

if current_frame1<=5 then
if (timer-t)>=frame_delay(current_frame1) then    
current_frame1=current_frame1+1
true_frame=current_frame1
t=timer
fireball_frame=1
end if    
end if    

if current_frame1=6 then
new_state3="LAUNCH"
hadoken_active="YES"
true_frame=4
fireball_frame=1
if (timer-t)>=frame_delay2(fireball_frame) then    
hx1=hx1+20
hy1=hy1+8
current_frame1=current_frame1+1
t=timer
end if
end if

if current_frame1=7 then
hadoken_active="YES"
new_state3="LAUNCH"
true_frame=4
fireball_frame=2
if (timer-t)>=frame_delay2(fireball_frame) then    
current_frame1=current_frame1+1
t=timer
end if
end if

if current_frame1=8 then
hadoken_active="YES"
new_state3="LAUNCH"
true_frame=4
fireball_frame=4
if (timer-t)>=frame_delay2(fireball_frame) then    
current_frame1=current_frame1+1
t=timer
end if
t2=timer
end if

if current_frame1>8 or new_state3="FIREBALL" then
hadoken_active="YES"
new_state3="FIREBALL"
if (timer-t)>=frame_delay2(fireball_frame) then
current_frame1=current_frame1+1
select case fireball_frame
case 3
fireball_frame=4
case 4
fireball_frame=3    
end select
t=timer
end if

if (timer-t2)>=.004 then
t2=timer
hx1=hx1+2
if hx1>640 then new_state3="RETURN FROM FIREBALL":input_active="YES"
end if    
if current_frame1>=10 then input_active="YES"
end if

current_frame=true_frame    

END SUB
'===============================================================================
SUB SHORYUKEN_RYU(byref rx as integer,byref ry as integer,byref d_state as string,byref input_status as string,byref current_frame as integer,byref new_state4 as string)
static count as integer
static i_state2 as string
static t as double
static t2 as double
static true_frame as integer
dim frame_delay(1 to 10) as double
frame_delay(1)=.1
frame_delay(2)=.2
frame_delay(3)=0
frame_delay(4)=.1
frame_delay(5)=.1
frame_delay(6)=.1
frame_delay(7)=.2
frame_delay(8)=.1
frame_delay(9)=.1
frame_delay(10)=.1
static jumping_distance as integer
static rf as string 'Rise and Fall status
static input_status2 as string
static new_state2 as string

dim ground as integer
ground=300 'Y Axis location of the ground
static distance_increment as integer
static total_movement as integer
static upward as integer
static downward as integer
static dbf as integer 'Y axis distance before ground, at or below this a punch or kick is no longer allowed when falling
static min_d as integer 'Y axis minimum distance above ground to punch or kick when falling
static efc as integer 'extra frame counter for falling animation frames
dbf=300-ry

if d_state="ON GROUND" and input_status="OFF" and new_state4="" then
'Initialize Jump
d_state="IN AIR"
input_status="OFF"
count=0
i_state2=""
new_state4="SHORYUKEN"
new_state2=""
t=timer
t2=timer
jumping_distance=350 '300 Pixels Up
distance_increment=2 'Y Axis increment
total_movement=int((jumping_distance/distance_increment)*2) 'It is always times 2 because half of the movement is going up and half is going back down
upward=int(total_movement/4)
downward=(upward+1)
min_d=40
efc=2

true_frame=1

rf="RISING"
end if


if d_state="IN AIR" and true_frame<3 and count<upward then
if (timer-t)>=frame_delay(true_frame) then
true_frame=true_frame+1    
t=timer
end if    
end if

if d_state="IN AIR" and true_frame>=3 and count<upward then
'Rising
rf="RISING"
true_frame=3
if (timer-t)>=.002 then
input_status="OFF"
count=count+1
t=timer
t2=timer
ry=ry-distance_increment
end if
end if 


if d_state="IN AIR" and count>=upward and true_frame<=5 then
rf="FALLING"
if (timer-t2)>=frame_delay(true_frame) then
true_frame=true_frame+1    
t2=timer
end if     
if (timer-t)>=.005 then
input_status="OFF"
count=count+1
t=timer
ry=ry+distance_increment
end if
end if


if d_state="IN AIR" and count>=upward and true_frame>5 and dbf>1 then
rf="FALLING"
true_frame=6    
if (timer-t)>=.005 then
input_status="OFF"
count=count+1
t=timer
ry=ry+distance_increment
end if
end if 
   
new_state4="SHORYUKEN"   

if rf="FALLING" and true_frame>5 and dbf<=1 then

true_frame=7
if (timer-t)>=frame_delay(true_frame) then

t=timer
ry=ground

input_status="OFF"
new_state4="RETURN FROM SHORYUKEN"

rf=""
true_frame=1
end if
end if

current_frame=true_frame
END SUB
'===============================================================================
SUB STATE_RYU(byref rx as integer,byref ry as integer,byref cur_ani as any ptr,states_ryu() as string,byref hadoken_active as string,byref hx as integer,byref hy as integer,byref cur_ani22 as any ptr)
'Animation & Sound should be loaded before calling this sub
static fp as integer
static current_state1 as string
static frame_count1 as integer
static current_frame1 as integer
static current_frame2 as integer
static input_state1 as string
static input_state2 as string
static input_state3 as string
static animation_pointers(1 to 100) as any ptr
static animation_pointers2(1 to 100) as any ptr
static frame_delays1(1 to 100) as double
static frame_delays2(1 to 100) as double
static return_string1 as string
static t as double
static t2 as double
static vector as string
static pvector as string
static d_state as string 'Descriptive State
static i_state as string
static input_status as string
static bog as string
static pk as string
static punch as string
static kick as string
static i_state2 as string
static cf2 as integer
static cur_ani2 as any ptr
static t3 as double
static t4 as double
static t5 as double
static pframe as integer
static pstate as string
static new_state1 as string
static pnew_state1 as string 
static jump_state1 as string
static t_array1(1 to 100) as string
static hadoken as string
static shoryuken as string
static fireball_frame1 as integer
static new_state3 as string
static frame_count3 as integer
static current_frame3 as integer
static return_string2 as string
static input_active1 as string
static new_state4 as string

if fp=0 then
fp=1
i_state="Standing"
current_state1="STANDING"

d_state="ON GROUND"
t=timer
t2=timer
t3=timer
t4=timer
t5=timer
input_status="ON"
punch="YES"
kick="YES"
current_frame1=1
hadoken="YES"
shoryuken="YES"
new_state3=""
new_state4=""
input_active1="YES"
end if

CONTROL_P1_RYU input_state1,input_state2,input_state3 'Get Keyboard Input

select case input_state1
case "LEFT"
if input_state1="LEFT" and input_status="ON" and d_state="ON GROUND" then 'Pressing Left 
if (timer-t3)>.003 then
rx=rx-1
t3=timer
end if
if rx<0 then rx=0
pk="L"
if i_state="WB" then
else
i_state="WB"
current_frame1=1
end if    
else
if pk="L" then i_state="":pk=""    
end if
case "RIGHT"
if input_state1="RIGHT" and input_status="ON" and d_state="ON GROUND" then 'Pressing Left 
if (timer-t4)>.003 then
rx=rx+1
t4=timer
end if
if rx>600 then rx=600
pk="R"
if i_state="WF" then
else
i_state="WF"
current_frame1=1
end if    
else
if pk="R" then i_state="":pk=""    
end if
case "PUNCH"
if punch="YES" and d_state="ON GROUND" and input_status="ON" then 'Standing Punch
if i_state="" or i_state="Standing" or i_state="WB" or i_state="WF" then
pk=""
current_frame1=1
input_status="OFF"
i_state="SP"
SOUND_RYU "SWING" 'Punching Sound
punch="NO"
pstate="SP"
end if    
end if
case "KICK"
if kick="YES" and d_state="ON GROUND" and input_status="ON" then 'Standing Kick
if i_state="" or i_state="Standing" or i_state="WB" or i_state="WF" then
pk=""
current_frame1=1
input_status="OFF"
i_state="SK"
SOUND_RYU "JUMPING" 'Kicking Sound
kick="NO"
end if    
end if  
case "DOWN"
if d_state="ON GROUND" then
if i_state="" or i_state="Standing" or i_state="WB" or i_state="WF" then    
current_frame1=1
input_status="ON"
i_state="C"
end if
end if
case "CROUCHINGPUNCH"
if punch="YES" and d_state="ON GROUND" and input_status="ON" then 'Crouching Punch    
if i_state="C" then
current_frame1=1
input_status="OFF"
i_state="CP"
SOUND_RYU "SWING" 'Punching Sound
end if
end if
case "CROUCHINGKICK"
if kick="YES" and d_state="ON GROUND" and input_status="ON" then 'Crouching Kick    
if i_state="C" then
current_frame1=1
input_status="OFF"
i_state="CK"
SOUND_RYU "JUMPING" 'Kicking Sound
end if
end if
case "JUMPING"
if kick="YES" and punch="YES" and input_status="ON" then i_state="J" 
case "JUMPINGFORWARD"
if kick="YES" and punch="YES" and input_status="ON" then i_state="JF"
case "JUMPINGBACK"
if kick="YES" and punch="YES" and input_status="ON" then i_state="JB"
case "NOTHING"
if input_status="ON" then 
pstate=i_state
i_state="Standing"
end if
case "HADOKEN"
if d_state="ON GROUND" and input_status="ON" and hadoken="YES" then
i_state="HADOKEN"
current_frame1=1
input_status="OFF"
hadoken="NO"
SOUND_RYU "HADOKEN" 'Hadoken Sound
new_state3=""
end if
case "SHORYUKEN"
if d_state="ON GROUND" and input_status="ON" and shoryuken="YES" then
i_state="SHORYUKEN"
current_frame1=1
input_status="OFF"
shoryuken="NO"
SOUND_RYU "SHORYUKEN" 'Shoryukeyn Sound
end if
case else
if input_status="ON" then 
pstate=i_state
i_state="Standing"
end if
end select


select case i_state
case "WF" 
current_state1="WALKFORWARD"
case "WB"
current_state1="WALKBACK"
case "SP"
current_state1="STANDINGPUNCH"    
case "SK"
current_state1="STANDINGKICK"  
case "C"
current_state1="CROUCH"    
case "CP"
current_state1="CROUCHINGPUNCH" 
case "CK"
current_state1="CROUCHINGKICK"  
case "J"
current_state1="JUMPING"  
jump_state1="J"
case "JP"
current_state1="JUMPINGPUNCH" 
jump_state1="JP"
case "JK"
current_state1="JUMPINGKICK" 
jump_state1="JK"
case "JFK"
current_state1="JUMPINGKICK2" 
jump_state1="JFK"
case "JF"
current_state1="JUMPINGFORWARD"
jump_state1="JF"
case "JB"
current_state1="JUMPINGBACK"
jump_state1="JB"
case "JFP"
current_state1="JUMPINGPUNCH"
jump_state1="JFP"
case "JBP"
current_state1="JUMPINGPUNCH"
jump_state1="JBP"
case "JBK"
current_state1="JUMPINGKICK2"
jump_state1="JBK"
case "HADOKEN"
current_state1="HADOKEN"
if new_state3="" then
 else
 new_state3="HADOKEN"
end if
case "SHORYUKEN"
current_state1="SHORYUKEN" 
new_state4=""
case else
current_state1="STANDING"    
i_state=""
end select



if new_state1="RETURN" then current_state1="STANDING":jump_state1="":new_state1="":t_array1(5)="" 'This gets everything back to Standing/normal
'Set new_state1 to "RETURN" anytime to bring things back to Standing/normal

'Shoryuken======================================================================
if current_state1="SHORYUKEN" or new_state4="SHORYUKEN" then
SHORYUKEN_RYU rx,ry,d_state,input_status,current_frame1,new_state4 
if new_state4="SHORYUKEN" then current_state1="SHORYUKEN":input_status="OFF":i_state=""
end if

if new_state4="RETURN FROM SHORYUKEN" then
shoryuken="YES"
i_state=""
d_state="ON GROUND"
new_state4=""
current_state1="STANDING"
current_frame1=1
input_status="ON"
end if
'===============================================================================

'Hadoken========================================================================
if new_state3="HADOKEN" or current_state1="HADOKEN" or new_state3="LAUNCH" or new_state3="FIREBALL" then
hadoken="NO"
if new_state3="LAUNCH" or new_state3="FIREBALL" then hadoken_active="YES":input_status="OFF"
if new_state3="LAUNCH" or new_state3="HADOKEN" then current_state1="HADOKEN":input_status="OFF"
'if new_state3="FIREBALL" then input_status="ON"
HADOKEN_RYU rx,ry, hx, hy,current_frame3,fireball_frame1,new_state3,hadoken_active,input_active1    
if current_state1="HADOKEN" then current_frame1=current_frame3
if current_state1="HADOKEN" and hadoken_active="YES" and input_active1="YES" then i_state="" 
if hadoken_active="YES" then
if punch<>"NO" and kick<>"NO" and input_active1="YES" then input_status="ON"    
if new_state3="LAUNCH" then input_status="OFF"
GET_ANIMATION_RYU "FIREBALL",animation_pointers2(),frame_delays2(),frame_count3,return_string2
cur_ani22=animation_pointers2(fireball_frame1)
end if
end if    

if new_state3="RETURN FROM FIREBALL" then
new_state3=""
hadoken_active="NO"
hadoken="YES"
end if 
'===============================================================================

'Jumping========================================================================
if jump_state1="J" or current_state1="JUMPING" then
current_state1="JUMPING"

if new_state1<>"PUNCH" and new_state1<>"KICK" then
JUMPING_RYU rx,ry,input_status,i_state,d_state,current_frame1,new_state1,input_state1,input_state2,input_state3,t_array1()
end if

end if

if jump_state1="JF" or current_state1="JUMPINGFORWARD" then
current_state1="JUMPINGFORWARD"

if new_state1<>"PUNCHJF" and new_state1<>"KICKJF" then
JUMPING_FORWARD_RYU rx,ry,input_status,i_state,d_state,current_frame1,new_state1,input_state1,input_state2,input_state3,t_array1()
end if

end if

if jump_state1="JB" or current_state1="JUMPINGBACK" then
current_state1="JUMPINGBACK"

if new_state1<>"PUNCHJB" and new_state1<>"KICKJB" then
JUMPING_BACK_RYU rx,ry,input_status,i_state,d_state,current_frame1,new_state1,input_state1,input_state2,input_state3,t_array1()
end if

end if


if jump_state1="JFP" or t_array1(5)="PUNCHJF" or t_array1(5)="STARTJFP" or t_array1(5)="JUMPINGFORWARD" then
jump_state1="JFP"
current_state1="JUMPINGPUNCH"
JUMPING_FORWARD_PUNCH_RYU rx,ry,input_status,i_state,d_state,current_frame1,new_state1,input_state1,input_state2,input_state3,t_array1()
if t_array1(5)="PUNCHJFP" then current_state1="JUMPINGPUNCH"
if t_array1(5)="JUMPINGFORWARD" then current_state1="JUMPINGFORWARD"
end if

if jump_state1="JBP" or t_array1(5)="PUNCHJB" or t_array1(5)="STARTJBP" or t_array1(5)="JUMPINGBACK" then
jump_state1="JBP"
current_state1="JUMPINGPUNCH"
JUMPING_BACK_PUNCH_RYU rx,ry,input_status,i_state,d_state,current_frame1,new_state1,input_state1,input_state2,input_state3,t_array1()
if t_array1(5)="PUNCHJBP" then current_state1="JUMPINGPUNCH"
if t_array1(5)="JUMPINGBACK" then current_state1="JUMPINGBACK"
end if


if jump_state1="JFK" or t_array1(5)="KICKJF" or t_array1(5)="STARTJFK" or t_array1(5)="JUMPINGFORWARD" then
jump_state1="JFK"
current_state1="JUMPINGKICK2"
JUMPING_FORWARD_KICK_RYU rx,ry,input_status,i_state,d_state,current_frame1,new_state1,input_state1,input_state2,input_state3,t_array1()
if t_array1(5)="KICKJFK" then current_state1="JUMPINGKICK2"
if t_array1(5)="JUMPINGFORWARD" then current_state1="JUMPINGFORWARD"
end if

if jump_state1="JBK" or t_array1(5)="KICKJB" or t_array1(5)="STARTJBK" or t_array1(5)="JUMPINGBACK" then
jump_state1="JBK"
current_state1="JUMPINGKICK2"
JUMPING_BACK_KICK_RYU rx,ry,input_status,i_state,d_state,current_frame1,new_state1,input_state1,input_state2,input_state3,t_array1()
if t_array1(5)="KICKJBK" then current_state1="JUMPINGKICK2"
if t_array1(5)="JUMPINGBACK" then current_state1="JUMPINGBACK"
end if

if jump_state1="JP" or t_array1(5)="PUNCH" or t_array1(5)="STARTP" or t_array1(5)="JUMPING" then
jump_state1="JP"
current_state1="JUMPINGPUNCH"
JUMPING_PUNCH_RYU rx,ry,input_status,i_state,d_state,current_frame1,new_state1,input_state1,input_state2,input_state3,t_array1()
if t_array1(5)="JUMPING" then current_state1="JUMPING"
end if

if jump_state1="JK" or t_array1(5)="KICK" or t_array1(5)="STARTK" or t_array1(5)="JUMPING" then
jump_state1="JK"
current_state1="JUMPINGKICK"
JUMPING_KICK_RYU rx,ry,input_status,i_state,d_state,current_frame1,new_state1,input_state1,input_state2,input_state3,t_array1()
if t_array1(5)="JUMPING" then current_state1="JUMPING"
end if
'===============================================================================

'Animation======================================================================
GET_ANIMATION_RYU current_state1,animation_pointers(),frame_delays1(),frame_count1,return_string1 'Get Current Animation Frames
'current_state1 holds the name of a series of animations to be pulled from GET_ANIMATION_RYU
cur_ani=animation_pointers(current_frame1) 'cur_ani is the current pointer to the current animation frame to be displayed
'===============================================================================

'Current States Summary String Array============================================
states_ryu(1)=current_state1+" "+input_state2+" "+input_state3+" "+str(current_frame1)+" "+new_state1
states_ryu(2)=d_state
states_ryu(3)=t_array1(1)+" "+t_array1(2)+" "+t_array1(3)+" "+t_array1(4)+" "+t_array1(5)+" "+t_array1(6)+" "+t_array1(7)+" "
'===============================================================================

'Handle Standing, Standing Punch and Standing Kick==============================
if mid(current_state1,1,7)<>"JUMPING" then
if (timer-t)>=frame_delays1(current_frame1) then
t=timer 
current_frame1=current_frame1+1
if current_frame1>frame_count1 then 
    current_frame1=1 
if i_state="SP" or i_state="SK" then i_state="Standing"
punch="YES":input_status="ON"
kick="YES":input_status="ON"
if i_state="CP" or i_state="CK" then
i_state="C"    
current_frame1=pframe
end if    

if i_state="C" then
current_frame1=frame_count1
pframe=frame_count1
input_status="ON"
end if    
end if
end if
end if
'===============================================================================
'************************************
if d_state<>"IN AIR" then
jump_state1=""    
end if
END SUB
'===============================================================================


