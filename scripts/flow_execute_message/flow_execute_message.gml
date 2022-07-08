/// @param {String} message
/// @param {Id.instance} [id]
function flow_execute_message(_msg, _id) 
{
	method(_id, global.__flow_messages[$ _msg] ) ();
}