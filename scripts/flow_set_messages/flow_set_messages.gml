function flow_set_messages() {
	var i=0; repeat( (argument_count - 1) div 2) {
		var _msg = argument[i];
		var _met = argument[i + 1];
		if (!variable_struct_exists(global.__flow_messages, _msg) ) {
			global.__flow_messages[$ _msg] = _met;
		}
	}	
}