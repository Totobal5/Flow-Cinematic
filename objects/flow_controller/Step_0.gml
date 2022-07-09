/// @description [END SEQUENCE]
// Feather ignore all
if (checkActors) {
	// Obtener
	sequenceActiveTracks = sequenceInstance.activeTracks; 
	
	var i=0; repeat(array_length(actors) div 2) {
		var _ins  = actors[i];
		var _name = actors[i + 1];
	
		var j=0; repeat(array_length(sequenceActiveTracks) ) {
			var _track = sequenceActiveTracks[j++];
			if (_track.track.name == _name) {
				_ins.flowFollow = true;
				_ins.flowTrack	= _track;			
				_ins.flowLayer	= layer;
				_ins.flowElement = sequenceElement;
				
				_ins.x = _track.posx + (room_width  / 2);
				_ins.y = _track.posy + (room_height / 2);				
				
				_track.track.visible = false;
				
				sequenceInstance[$ "in"+_name] = _ins;
				
				break;
			}
		}
	
		++i;
	}			
	// Desactivar
	checkActors = false;
}

if (layer_sequence_exists(layer, sequenceElement) ) {
	var _loopmode = sequenceObject.loopmode;
	switch (_loopmode) {
		case seqplay_oneshot:
			#region ONESHOT
			if (layer_sequence_is_finished(sequenceElement) ) instance_destroy();	
			
			#endregion
		break;
			
		case seqplay_pingpong:
			#region PING-PONG
			if (!sequenceReturn) {
				if (sequenceInstance.headPosition >= sequenceLenght) {
					sequenceReturn = !sequenceReturn;
					cycles++;
					
					show_debug_message("Flow cycles: " + string(cycles) );
				}
			}
			else {
				if (sequenceInstance.headPosition <= 0) {
					sequenceReturn = !sequenceReturn;
					cycles++;
					
					show_debug_message("Flow cycles: " + string(cycles) );
				}					
			}
			
			if (cycles >= cyclesMax) instance_destroy();
			#endregion
		break;
		
		case seqplay_loop:
			#region LOOP
			if (sequenceInstance.headPosition == 0) {
				cycles++;
				show_debug_message("Flow cycles: " + string(cycles) );
			}
			
			if (cycles >= cyclesMax) instance_destroy();
			#endregion
		break;
	}
}