/// @desc Ejecuta la funcion de un mensaje. No comprueba si existe el mensaje!
/// @param {String} message		mensaje a ejecutar
/// @param {Id.instance} [id]	contexto def: quien ejecuta
function flow_execute_message(_msg, _id) 
{
	method(_id, global.__flow_messages[$ _msg] ) ();
}