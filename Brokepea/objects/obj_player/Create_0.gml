/// @description Insert description here
// You can write your code in this editor
init_movement();

shadow_height = 10;
shadow_width = sprite_width;

carry = noone;
carry_height = sprite_height+5;
carry_magnitude = 2;
carry_x = lengthdir_x(carry_height,90)
carry_y = lengthdir_x(carry_height,90)


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