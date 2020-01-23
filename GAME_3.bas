#include once "mb_gamedev_lib1.bi"
#include once "mb_sound_lib2.bi"
#include once "mb_accurate_timing_lib.bi"
#include once "mb_keyboard_lib2.bi"
#include once "SUBS_RYU.bi"
SET_SCREEN 640,480,32, "Fighting Game Demo 3 by Matt B." 

mb_install_keyboard_handler 'this installs the keyboard handler, always call it AFTER setting the screen resolution

prepare_sound 'prepare sound library routines

Dim buffer1 As Any Ptr = ImageCreate( 640, 480, RGB(0, 0, 0) )
Dim toscreen As Any Ptr = ImageCreate( 640, 480, RGB(0, 0, 0) )

dim z as string
dim frame_c as integer
dim animation_ptr(1 to 100) as any ptr
dim frame_d(1 to 100) as double
dim return_s as string
dim i as integer
dim t as double
dim z2 as string
dim x as integer
dim y as integer
dim cur_ani1 as any ptr
dim cur_state1 as string
dim cur_vector1 as string
dim states_ryu1(1 to 100) as string
dim p1_projectile_active1 as string
dim px as integer
dim py as integer
dim cur_ani2 as any ptr
dim current_character as string

p1_projectile_active1="NO"

nok_p1=15 'A total of 15 keys are active for Player 1 
scan_codes_p1(1)=65 'A
scan_codes_p1(2)=83 'S
scan_codes_p1(3)=68 'D
scan_codes_p1(4)=90 'Z
scan_codes_p1(5)=88 'X
scan_codes_p1(6)=67 'C
scan_codes_p1(7)=38 'Up
scan_codes_p1(8)=37 'Left
scan_codes_p1(9)=40 'Down
scan_codes_p1(10)=39 'Right

scan_codes_p1(11)=13 'Enter
scan_codes_p1(12)=32 'Space Bar
scan_codes_p1(13)=76 'L
scan_codes_p1(14)=75 'K
scan_codes_p1(15)=27 'ESC

x=100
y=300
GET_ANIMATION_RYU "LOAD",animation_ptr(),frame_d(),frame_c,return_s
SOUND_RYU "LOAD"
SOUND_RYU "HADOKEN"
current_character="RYU"

dim as integer hWave2(1),sound2(1)

select case current_character
case "RYU"
LOAD_MP3_TO_MEM "sounds/SF_Ryu.mp3",hWave2(1),sound2(1),@sound2(1)
end select

dim tfps as long
tfps=350
dim delay1 as double
delay1=GET_DELAY(tfps) 'Default Target 350 FPS
dim tol1 as double
do
tol1=TOP_OF_LOOP 'ALWAYS CALL THIS AT THE TOP OF THE MAIN LOOP
'=============================================================
if IS_PLAYING(sound2(1))="NO" then
PLAY_SOUND sound2(1)    
end if   

STATE_RYU x,y,cur_ani1,states_ryu1(),p1_projectile_active1,px,py,cur_ani2'cur_state1,cur_vector1
put toscreen,(0,0),buffer1,PSET 'Clear the toscreen buffer with buffer1    
'line toscreen,(100,360)-(110,400),rgb(255,255,255),b
put toscreen,(x,y),cur_ani1,Trans 'Display the current frame of animation from STATE_RYU    

if p1_projectile_active1="YES" then 
draw string toscreen,(100,1),"PX="+str(px)
draw string toscreen,(100,10),"PY="+str(py)    
put toscreen,(px,py),cur_ani2,Trans 'if Player 1 Projecile is active then display current projectile frame of animation from STATE_RYU     
end if    

draw string toscreen,(10,1),"X="+str(x)
draw string toscreen,(10,10),"Y="+str(y)
draw string toscreen,(100,100),states_ryu1(1)
draw string toscreen,(1,120),states_ryu1(3)
put (0,0),toscreen,PSET 'Display the toscreen buffer to the screen

'=============================================================
LOOP_SLEEP tol1,delay1 'ALWAYS CALL THIS AT THE BOTTOM OF THE MAIN LOOP
loop until kcs_p1(15)=1

GET_ANIMATION_RYU "FREE",animation_ptr(),frame_d(),frame_c,return_s
SOUND_RYU "FREE"

FREE_SOUND_MEMORY hWave2(1) 
close_sound 'close the sound library

