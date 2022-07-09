// Feather ignore
/// @param	{Real}	x
/// @param	{Real}	y
/// @param	{Id.SequenceElement}	sequence_instance
/// @param	actors	Puede ser un array de actores
function flow_create(_x, _y, _sequence, _layer, _instances) 
{
	var _ins = instance_create_layer(_x, _y, _layer, flow_controller, {
		sequence:	_sequence,
		actors:		_instances
	});
	
	return _ins;
}