function flow_follow(_xoffset, _yoffset)
{
	_xoffset ??= FLOW_DEFAULT_XOFFSET;
	_yoffset ??= FLOW_DEFAULT_YOFFSET;
	
	x = __flowTrack.posx + _xoffset;
	y = __flowTrack.posy + _yoffset;
}

function flow_follow_x(_xoffset)
{
	_xoffset ??= FLOW_DEFAULT_XOFFSET;
	x = __flowTrack.posx + _xoffset;
}

function flow_follow_y(_yoffset)
{
	_yoffset ??= FLOW_DEFAULT_YOFFSET;
	y = __flowTrack.posy + _yoffset;
}

function flow_follow_imagespeed()
{
	image_speed = flowTrack.imagespeed;	
}

function flow_follow_imageindex()
{
	image_index = flowTrack.imageindex;	
}