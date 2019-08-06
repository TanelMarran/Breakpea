/// @description Insert description here
// You can write your code in this editor
init_movement();
movement_speed = 2.4;

init_shadow(sprite_width*0.8,8);
audio_listener_orientation(0,0,1000,0,-1,0);

carry = noone;
carry_height = sprite_height+5;
carry_magnitude = 2;
carry_x = lengthdir_x(carry_height,90)
carry_y = lengthdir_x(carry_height,90)
carry_speed = 0.8;
carry_cooldown = 15;
carry_cooldown_time = 0;

stamina_max = 75;
stamina_buildup = 0;
stamina_buildup_speed_max = 2.5;
stamina_recovery_rate = 0.02;
enemy_slowdown_max = 0.5;
enemy_slowdown = 1;

damage_flash = 0;
defeated = false;

rest = 0;

image_tween = 0;
image_index_last = 0;

key_right = ord("D");
key_left = ord("A");
key_up = ord("W");
key_down = ord("S");

right_pressed = keyboard_check_pressed(key_right);
right_press = keyboard_check(key_right);
right_released = keyboard_check_released(key_right);

left_pressed = keyboard_check_pressed(key_left);
left_press = keyboard_check(key_left);
left_released = keyboard_check_released(key_left);

up_pressed = keyboard_check_pressed(key_up);
up_press = keyboard_check(key_up);
up_released = keyboard_check_released(key_up);

down_pressed = keyboard_check_pressed(key_down);
down_press = keyboard_check(key_down);
down_released = keyboard_check_released(key_down);

defeat_screen_flow = 180;