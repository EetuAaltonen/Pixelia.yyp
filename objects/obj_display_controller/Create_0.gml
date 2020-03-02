// Display properties
globalvar DisplayWidth;
DisplayWidth = display_get_width();
globalvar DisplayHeight;
DisplayHeight = display_get_height();

// Native game resolution
globalvar BaseWidth;
BaseWidth = 512;
globalvar BaseHeight;
BaseHeight = 384;

// GUI resolution
globalvar GuiWidth;
GuiWidth = 1024;
globalvar GuiHeight;
GuiHeight = 768;
globalvar GuiWRatio;
GuiWRatio = GuiWidth / BaseWidth;
globalvar GuiHRatio;
GuiHRatio = GuiHeight / BaseHeight;

// TODO: Remove these useless variables
global.resWAspect = 0;
global.resHAspect = 0;
global.wResolution = 0;
global.hResolution = 0;

var aspect = DisplayWidth / DisplayHeight;
var viewWidth = 0;
var viewHeight = 0;
if (DisplayWidth < DisplayHeight) {
	// Portait
	viewWidth = min(BaseWidth, DisplayWidth);
	viewHeight = viewWidth / aspect;
} else {
	// Landscape
	viewHeight = min(BaseHeight, DisplayHeight);
	viewWidth = viewHeight * aspect;
}
camera_set_view_size(view_camera[0], floor(viewWidth), floor(viewHeight));
view_wport[0] = DisplayWidth;
view_hport[0] = DisplayHeight;
surface_resize(application_surface, view_wport[0], view_hport[0]);

var lastRoom = false;
var _room = room_next(room);
var  tempRoom = _room;
while (!lastRoom) {
	camera_destroy(room_get_camera(_room, 0));
	var camera = camera_create_view(
		(BaseWidth - viewWidth) div 2,
		(BaseHeight - viewHeight) div 2,
		viewWidth, viewHeight
	);
	room_set_camera(_room, 0, camera);
	room_set_viewport(_room, 0, true, 0, 0, viewWidth, viewHeight);
	room_set_view_enabled(_room, true);
	if (_room == room_last) {
		lastRoom = true;
    } else {
		tempRoom = _room;
		_room = room_next(tempRoom);
    }
}

// Set window size and center
window_set_size(DisplayWidth, DisplayHeight);
alarm[0] = 1;

// Pause
pause = false;
windowFocus = true;

// Init Menu
room_goto(Menu);