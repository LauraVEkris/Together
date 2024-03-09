camWidth = 470;
camHeight = 270;

follow = oHuman;

xTo = x;
yTo = y;

xStart = x;
yStart = y;

cam = view_camera[0];

view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;

default_zoom_width = camera_get_view_width(cam);
default_zoom_height = camera_get_view_height(cam);
currW = default_zoom_width;
currH = default_zoom_height;