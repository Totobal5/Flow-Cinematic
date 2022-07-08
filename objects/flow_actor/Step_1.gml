/// @description [UPDATE SEQUENCE]
if (flowFollow) {
	x = flowTrack.posx + (room_width  / 2);
	y = flowTrack.posy + (room_height / 2);	
	
	image_speed = flowTrack.imagespeed;
	if (flowImageIndex) {
		image_index = flowTrack.imageindex;
	}
	
	show_debug_message("image_speed: " + string(image_speed) );
	show_debug_message("image_index: " + string(image_index) );
	
	if (layer_sequence_exists(flowLayer, flowElement) ) {
		//flowFollow = false;	
	}
}