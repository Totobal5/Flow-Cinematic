function flow_instance_set(_ins, _seq_element, _track, _visible=false, _image_index=false) 
{
	if (variable_instance_exists(_ins, "flowActor") ) 
	{
		_ins.flowElement = _seq_element ?? _ins.flowElement;
		_ins.flowTrack = _track	
		
		if (!_visible)		_track.track.visible = false;
		_ins.flowImageIndex = _image_index;
	}
}