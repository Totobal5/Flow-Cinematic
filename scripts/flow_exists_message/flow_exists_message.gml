/// @param message
/// @return {Bool}
function flow_exists_message(_msg) 
{
	return (variable_struct_exists(global.__flow_messages, _msg) );
}