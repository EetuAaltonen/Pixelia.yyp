var xPos = argument0; //Must Be scr_gui Converted
var yPos = argument1; //Must Be scr_gui Converted
var width = argument2;
var height = argument3;
var padding = argument4; //Is An Array [left, top, right, bottom]
var color1 = argument5;
var color2 = argument6;
var outline = argument8;
var rounded = argument7;

if (rounded) {
	draw_roundrect_color(xPos, yPos,
						 xPos+width+padding[0]+padding[2],
						 yPos+height+padding[1]+padding[3],
						 color1, color2, outline);
} else {
	draw_rectangle_color(xPos, yPos,
						 xPos+width+padding[0]+padding[2],
						 yPos+height+padding[1]+padding[3],
						 color1, color2, color1, color2, outline);
}