/// @desc Resume la sequencia actual
function flow_resume() 
{
	if (!layer_sequence_exists(layer, sequenceElement) ) 
	{
		sequenceElement  = layer_sequence_create(layer, x, y, sequence);
		sequenceInstance = layer_sequence_get_instance(sequenceElement);
		sequenceLenght	 = layer_sequence_get_length(sequenceElement);			
	}
	
	layer_sequence_headpos(sequenceElement, sequenceHeadpos);
	layer_sequence_play(sequenceElement);	
}