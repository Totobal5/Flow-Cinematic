// Feather ignore all
/// @context {flow_controller}
/// @desc Pausa la sequencia actual
function flow_stop() 
{	
	if (layer_sequence_exists(layer, sequenceElement) ) 
	{	
		layer_sequence_pause(sequenceElement);	
		
		// Resume
		sequenceHeadpos = layer_sequence_get_headpos(sequenceElement) + 1;
		layerName = layer_get_name(layer);
	}
}