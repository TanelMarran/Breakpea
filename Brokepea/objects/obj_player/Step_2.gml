/// @description Insert description here
// You can write your code in this editor

if(image_index_last < floor(image_index) or (round(image_index) = 0 && round(image_index_last) != 0)) {
	image_tween = floor(image_index);
	trace("Image tween: " + image_tween);
} else {
	image_tween = -4;
}

image_index_last = image_index;