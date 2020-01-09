#include once "mb_sound_lib2.bi"

declare sub GET_ANIMATION_JUBEI(commandz as string,ani_pointers() as any ptr,frame_delays() as double,byref frame_counts as integer,return_string as string)
'declare sub STATE_RYU(rx as integer,ry as integer,cur_ani as any ptr,cur_state as string,cur_vector as string)
'===============================================================================
SUB GET_ANIMATION_JUBEI(commandz as string,ani_pointers() as any ptr,frame_delays() as double,byref frame_counts as integer,return_string as string)
static standing_jubei (1 to 6) as sprite
static walkback_jubei (1 to 6) as sprite
static walkforward_jubei (1 to 6) as sprite
static crouch_jubei (1 to 3) as sprite
static jumping_jubei (1 to 7) as sprite
static return_jubei (1 to 3) as sprite
static jumpingforward_jubei (1 to 6) as sprite
static standingpunch_jubei (1 to 3) as sprite
static crouchingpunch_jubei (1 to 5) as sprite
static jumpingpunch_jubei (1 to 3) as sprite
static standingkick_jubei (1 to 3) as sprite
static crouchingkick_jubei (1 to 5) as sprite
static jumpingkick_jubei (1 to 3) as sprite
'static hadoken_jubei (1 to 8) as sprite
'static fireball (1 to 2) as sprite
'static shoryuken_jubei (1 to 6) as sprite

static last_command as string
dim i as integer

select case commandz
case "LC"
'return last command
return_string=last_command
case "STANDING"
frame_counts=2
for i=1 to frame_counts
ani_pointers(i)=standing_jubei(i).spritebuf
next
frame_delays(1)=.1
frame_delays(2)=.1
'frame_delays(3)=.1
'frame_delays(4)=.1
'frame_delays(5)=.1
'frame_delays(6)=.1    
case "WALKBACK"
frame_counts=4
for i=1 to frame_counts
ani_pointers(i)=walkback_jubei(i).spritebuf
next
frame_delays(1)=.1
frame_delays(2)=.1
frame_delays(3)=.1
frame_delays(4)=.1
'frame_delays(5)=.1
'frame_delays(6)=.1    
case "WALKFORWARD"
frame_counts=5
for i=1 to frame_counts
ani_pointers(i)=walkforward_jubei(i).spritebuf
next
frame_delays(1)=.1
frame_delays(2)=.1
frame_delays(3)=.1
frame_delays(4)=.1
frame_delays(5)=.1
'frame_delays(6)=.1   
case "CROUCH"
frame_counts=2
for i=1 to frame_counts
ani_pointers(i)=crouch_jubei(i).spritebuf
next
frame_delays(1)=.1
frame_delays(2)=.1
'frame_delays(3)=.1    
case "JUMPING"
frame_counts=4
for i=1 to frame_counts
ani_pointers(i)=jumping_jubei(i).spritebuf
next
frame_delays(1)=.1
frame_delays(2)=.1
frame_delays(3)=.1
frame_delays(4)=.1
'frame_delays(5)=.1
'frame_delays(6)=.1
'frame_delays(7)=.1    
case "RETURN"
frame_counts=3
for i=1 to frame_counts
'ani_pointers(i)=return_jubei(i).spritebuf
next
frame_delays(1)=.1
frame_delays(2)=.1
frame_delays(3)=.1    
case "JUMPINGFORWARD"
frame_counts=6
dim i as integer
for i=1 to frame_counts
'ani_pointers(i)=jumpingforward_jubei(i).spritebuf
next
frame_delays(1)=.1
frame_delays(2)=.1
frame_delays(3)=.1
frame_delays(4)=.1
frame_delays(5)=.1
frame_delays(6)=.2    
case "STANDINGPUNCH"
frame_counts=3
for i=1 to frame_counts
ani_pointers(i)=standingpunch_jubei(i).spritebuf
next
frame_delays(1)=.1
frame_delays(2)=.2
frame_delays(3)=.1
case "CROUCHINGPUNCH"
frame_counts=3
for i=1 to frame_counts
ani_pointers(i)=crouchingpunch_jubei(i).spritebuf
next
frame_delays(1)=.1
frame_delays(2)=.2
frame_delays(3)=.1
'frame_delays(4)=.1
'frame_delays(5)=.1    
case "JUMPINGPUNCH"
frame_counts=3
for i=1 to frame_counts
ani_pointers(i)=jumpingpunch_jubei(i).spritebuf
next
frame_delays(1)=.1
frame_delays(2)=.2
frame_delays(3)=.1
case "STANDINGKICK"
frame_counts=3
for i=1 to frame_counts
ani_pointers(i)=standingkick_jubei(i).spritebuf
next
frame_delays(1)=.1
frame_delays(2)=.2
frame_delays(3)=.1    
case "CROUCHINGKICK"
frame_counts=4
for i=1 to frame_counts
ani_pointers(i)=crouchingkick_jubei(i).spritebuf
next
frame_delays(1)=.1
frame_delays(2)=.25
frame_delays(3)=.1
frame_delays(4)=.1
'frame_delays(5)=.1    
case "JUMPINGKICK"
frame_counts=3
for i=1 to frame_counts
ani_pointers(i)=jumpingkick_jubei(i).spritebuf
next
frame_delays(1)=.1
frame_delays(2)=.2
frame_delays(3)=.1    
    
    
case "LOAD"
LOAD_SPRITE standing_jubei(1),"graphics/jubei/jubei1_0-0.bmp"
LOAD_SPRITE standing_jubei(2),"graphics/jubei/jubei1_0-0.bmp"
'****  
LOAD_SPRITE walkback_jubei(1),"graphics/jubei/jubei1_21-0.bmp"
LOAD_SPRITE walkback_jubei(2),"graphics/jubei/jubei1_21-1.bmp"
LOAD_SPRITE walkback_jubei(3),"graphics/jubei/jubei1_21-2.bmp"
LOAD_SPRITE walkback_jubei(4),"graphics/jubei/jubei1_21-3.bmp"
'****
LOAD_SPRITE walkforward_jubei(1),"graphics/jubei/jubei1_20-0.bmp"
LOAD_SPRITE walkforward_jubei(2),"graphics/jubei/jubei1_20-1.bmp"
LOAD_SPRITE walkforward_jubei(3),"graphics/jubei/jubei1_20-2.bmp"
LOAD_SPRITE walkforward_jubei(4),"graphics/jubei/jubei1_20-3.bmp"
LOAD_SPRITE walkforward_jubei(5),"graphics/jubei/jubei1_20-4.bmp"
'****
LOAD_SPRITE crouch_jubei(1),"graphics/jubei/jubei1_10-0.bmp"
LOAD_SPRITE crouch_jubei(2),"graphics/jubei/jubei1_11-0.bmp"
'****
LOAD_SPRITE jumping_jubei(1),"graphics/jubei/jubei1_41-0.bmp"
LOAD_SPRITE jumping_jubei(2),"graphics/jubei/jubei1_41-1.bmp"
LOAD_SPRITE jumping_jubei(3),"graphics/jubei/jubei1_41-2.bmp"
LOAD_SPRITE jumping_jubei(4),"graphics/jubei/jubei1_41-3.bmp"
'****
LOAD_SPRITE standingpunch_jubei(1),"graphics/jubei/jubei1_200-0.bmp"
LOAD_SPRITE standingpunch_jubei(2),"graphics/jubei/jubei1_200-1.bmp"
LOAD_SPRITE standingpunch_jubei(3),"graphics/jubei/jubei1_200-0.bmp"
'****
LOAD_SPRITE crouchingpunch_jubei(1),"graphics/jubei/jubei1_400-0.bmp"
LOAD_SPRITE crouchingpunch_jubei(2),"graphics/jubei/jubei1_400-1.bmp"
LOAD_SPRITE crouchingpunch_jubei(3),"graphics/jubei/jubei1_400-0.bmp"
'****
LOAD_SPRITE jumpingpunch_jubei(1),"graphics/jubei/jubei1_600-0.bmp"
LOAD_SPRITE jumpingpunch_jubei(2),"graphics/jubei/jubei1_600-1.bmp"
LOAD_SPRITE jumpingpunch_jubei(3),"graphics/jubei/jubei1_600-0.bmp"
'****
LOAD_SPRITE standingkick_jubei(1),"graphics/jubei/jubei1_230-0.bmp"
LOAD_SPRITE standingkick_jubei(2),"graphics/jubei/jubei1_230-1.bmp"
LOAD_SPRITE standingkick_jubei(3),"graphics/jubei/jubei1_230-0.bmp"
'****
LOAD_SPRITE crouchingkick_jubei(1),"graphics/jubei/jubei1_430-0.bmp"
LOAD_SPRITE crouchingkick_jubei(2),"graphics/jubei/jubei1_430-1.bmp"
LOAD_SPRITE crouchingkick_jubei(3),"graphics/jubei/jubei1_430-2.bmp"
LOAD_SPRITE crouchingkick_jubei(4),"graphics/jubei/jubei1_430-0.bmp"
'****
LOAD_SPRITE jumpingkick_jubei(1),"graphics/jubei/jubei1_630-0.bmp"
LOAD_SPRITE jumpingkick_jubei(2),"graphics/jubei/jubei1_630-1.bmp"
LOAD_SPRITE jumpingkick_jubei(3),"graphics/jubei/jubei1_630-0.bmp"
'****
'LOAD_SPRITE shoryuken_ryu(6),"graphics/ryu/ryu1_1000-5.bmp" 
  
case "FREE"
   
'ImageDestroy shoryuken_ryu(6).spritebuf    
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


SUB SOUND_JUBEI(commandz as string)
static as integer hWave(6),sound(6),lasts,lasts2
dim i as integer
select case ucase(commandz)
case "LOAD"
LOAD_MP3_TO_MEM "sounds/Jubei_Jumping.mp3",hWave(0),sound(0),@sound(0)
LOAD_MP3_TO_MEM "sounds/Jubei_Kick1.mp3",hWave(1),sound(1),@sound(1)
LOAD_MP3_TO_MEM "sounds/Jubei_Kickvoice1.mp3",hWave(2),sound(2),@sound(2)
LOAD_MP3_TO_MEM "sounds/Jubei_Landing.mp3",hWave(3),sound(3),@sound(3)
LOAD_MP3_TO_MEM "sounds/Jubei_Punch1.mp3",hWave(4),sound(4),@sound(4)
LOAD_MP3_TO_MEM "sounds/Jubei_Punchvoice1.mp3",hWave(5),sound(5),@sound(5)
LOAD_MP3_TO_MEM "sounds/Jubei_Punchvoice2.mp3",hWave(6),sound(6),@sound(6)
'LOAD_MP3_TO_MEM "sounds/Hadoken1.mp3",hWave(1),sound(1),@sound(1)
'LOAD_MP3_TO_MEM "sounds/Jumping.mp3",hWave(2),sound(2),@sound(2)
'LOAD_MP3_TO_MEM "sounds/shoryuken.mp3",hWave(3),sound(3),@sound(3)
case "FREE"
for i=0 to 6
FREE_SOUND_MEMORY hWave(i)
next
case "PUNCH"
'STOP_SOUND sound(0)    
PLAY_SOUND_MC sound(4)  
PLAY_SOUND_MC sound(5)
lasts=4
lasts2=5
case "JUMPING"
PLAY_SOUND_MC sound(0) 
lasts=0
lasts2=0
case "KICK"
PLAY_SOUND_MC sound(1)
PLAY_SOUND_MC sound(2)
lasts=1
lasts2=2
case "LANDING"
PLAY_SOUND_MC sound(3) 
lasts=3
lasts2=0    
case "STOP"
STOP_SOUND sound(lasts)    
if lasts2>0 then
STOP_SOUND sound(lasts2)
end if
case else
end select
END SUB
'===============================================================================
SUB CONTROL_P1_JUBEI(byref input_state as string,byref input_state2 as string,byref input_state3 as string)
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
end if

if kcs_p1(7)=1 and kcs_p1(10)=1  then 'Jumping Forward 
input_state="JUMPINGFORWARD"
input_state2=input_state 
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
input_state="JUMPING"
input_state2=input_state 
end if

if kcs_p1(9)=1  then 'Pressing Down 
input_state="DOWN"
input_state2=input_state 
end if

pk2=kb_p1(30)
mb_keyboard_buffer_sort kts_p1(),kb_p1()

'if hadoken_motion_check_p1=1 then 'Hadoken Motion Check
'mb_kb_clear_p1
'input_state="HADOKEN"
'exit sub
'end if

'if shoryuken_motion_check_p1=1 then 'Shoryuken Motion Check
'mb_kb_clear_p1 
'input_state="SHORYUKEN"
'exit sub
'end if


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
SUB JUMPING_JUBEI(byref rx as integer,byref ry as integer,byref input_status as string,byref i_state as string,byref d_state as string,byref current_frame as integer,byref new_state as string,input_statez as string,input_statez2 as string,input_statez3 as string)
static count as integer
static i_state2 as string
static t as double
dim frame_delay(1 to 10) as double
frame_delay(1)=.1
frame_delay(2)=.1
frame_delay(3)=.2
frame_delay(4)=.1
frame_delay(5)=.1
frame_delay(6)=.1
frame_delay(7)=.1
frame_delay(8)=.1
frame_delay(9)=.1
frame_delay(10)=.1


if d_state="ON GROUND" and input_status="ON" then
d_state="IN AIR"
input_status="OFF"
count=0
'i_state2="RISING"
i_state2=""
new_state=""
t=timer
end if


if d_state="IN AIR" and count>=1 and count<77 then
current_frame=2
if (timer-t)>=.003 then
input_status="OFF"
count=count+1
t=timer
ry=ry-2
end if
end if 


if d_state="IN AIR" and count>=80 and count<150 then
current_frame=4
if (timer-t)>=.003 then
input_status="OFF"
count=count+1
t=timer
ry=ry+2
end if
end if

if new_state="" then
if d_state="IN AIR" and count>=77 and count<=79 then
if (timer-t)>=frame_delay(current_frame) then
input_status="OFF"
count=count+1
t=timer
current_frame=current_frame+1
end if
end if
else
if d_state="IN AIR" and count>=77 and count<=79 then count=count+1    
end if

if d_state="IN AIR" and count=0 then
current_frame=1
if (timer-t)>=.003 then
SOUND_JUBEI "JUMPING"
input_status="OFF"
count=count+1
t=timer
end if
end if    

if d_state="IN AIR" and count>=150 then
current_frame=1
if (timer-t)>=.1 then
input_status="ON"
count=0
t=timer
ry=300
d_state="ON GROUND"
i_state=""
new_state=""
input_statez2=""
input_statez3=""
SOUND_JUBEI "LANDING"
end if
end if

if new_state="" then
if d_state="IN AIR" and count>1 and count<130  then
input_status="ON"
if input_statez3="PUNCH" and i_state2="" then 
i_state2="PUNCH":new_state="JUMPINGPUNCH"
SOUND_JUBEI "PUNCH" 'Punching Sound
end if
if input_statez3="KICK" and i_state2="" then 
i_state2="KICK":new_state="JUMPINGKICK"
SOUND_JUBEI "KICK" 'Kicking Sound
end if
end if    
end if
END SUB
'===============================================================================
SUB STATE_JUBEI(byref rx as integer,byref ry as integer,byref cur_ani as any ptr,states_ryu() as string)
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
static frame_delays1(1 to 100) as double
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

if fp=0 then
fp=1
i_state="Standing"
current_state1="STANDING"
'vector="G"
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
end if

CONTROL_P1_JUBEI input_state1,input_state2,input_state3 'Get Keyboard Input

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
'if pstate<>"SP" then
'if (timer-t5)>.001 then
't5=timer
if punch="YES" and d_state="ON GROUND" and input_status="ON" then 'Standing Punch
if i_state="" or i_state="Standing" or i_state="WB" or i_state="WF" then
pk=""
current_frame1=1
input_status="OFF"
i_state="SP"
SOUND_JUBEI "PUNCH" 'Punching Sound
punch="NO"
pstate="SP"
end if    
end if
'end if
case "KICK"
if kick="YES" and d_state="ON GROUND" and input_status="ON" then 'Standing Kick
if i_state="" or i_state="Standing" or i_state="WB" or i_state="WF" then
pk=""
current_frame1=1
input_status="OFF"
i_state="SK"
SOUND_JUBEI "KICK" 'Kicking Sound
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
'punch="NO"
i_state="CP"
SOUND_JUBEI "PUNCH" 'Punching Sound
end if
end if
case "CROUCHINGKICK"
if kick="YES" and d_state="ON GROUND" and input_status="ON" then 'Crouching Kick    
if i_state="C" then
current_frame1=1
input_status="OFF"
'kick="NO"
i_state="CK"
SOUND_JUBEI "KICK" 'Kicking Sound
end if
end if
case "JUMPING"
if kick="YES" and punch="YES" and input_status="ON" then i_state="J"    
case "NOTHING"
if input_status="ON" then 
pstate=i_state
i_state="Standing"
end if
case else
'Remember to remove this case else later    
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
case else
current_state1="STANDING"    
i_state=""
'punch="YES"
'input_status="ON"
end select

if i_state="J" or d_state="IN AIR" then
current_state1="JUMPING"
if new_state1="" then current_frame2=1
pnew_state1=new_state1
JUMPING_JUBEI rx,ry,input_status,i_state,d_state,current_frame1,new_state1,input_state1,input_state2,input_state3
if len(new_state1)>3 then
current_state1=new_state1
'if pnew_state1="" then current_frame1=1
current_frame1=current_frame2
end if    
end if

GET_ANIMATION_JUBEI current_state1,animation_pointers(),frame_delays1(),frame_count1,return_string1 'Get Current Animation Frames
'(rx as integer,ry as integer,cur_ani as any ptr,cur_state as string,cur_vector as string)
cur_ani=animation_pointers(current_frame1)
'cur_state=current_state1'str(animation_pointers(current_frame1))
'cur_vector=vector
states_ryu(1)=current_state1+" "+input_state2+" "+input_state3
states_ryu(2)=d_state

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
'************************************
if mid(current_state1,1,7)="JUMPING" then
if (timer-t)>=frame_delays1(current_frame2) then
t=timer
current_frame2=current_frame2+1
if current_frame2>frame_count1 then 
current_frame2=1
current_state1="JUMPING"
new_state1="END"
end if
end if
end if

END SUB
'===============================================================================


