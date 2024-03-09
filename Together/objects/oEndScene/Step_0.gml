//use space to skip
if keyboard_check_pressed(vk_space){
room_goto(rTitle);
}
if image_index + image_speed >= image_number {
image_speed = 0;
room_goto(rTitle);
}