/// @description [EXECUTE MESSAGES]
if (event_data[? "event_type"] == "sequence event") {
	var _message = event_data[? "message"];
	var _element = event_data[? "element_id"];
	
	if (_element == sequenceElement && flow_exists_message(_message) ) {
		flow_execute_message(_message, id);
	}
}