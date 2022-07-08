/// @param {Id.instance}	instance
/// @param {String}			name
/// @param {Bool}			[desactivate?]
function flow_instance(_id, _name, _des=true) constructor {
	#region PRIVATE
	__ins = _id;
	__obj = _id.object_index;
	__name = _name;
	
	__desactivate = _des;
	__layer = _id.layer;
	__depth = layer_get_depth(__layer);
	
	__relative = false;
	__posStart = {x: __ins.x,	y:__ins.y};
	__posEnd   = {x: noone,		y:  noone};
	
	__passToRecreate = function() {};
	#endregion
	
	#region METHODS
	/// @param {Bool} [start_pos?]
	static set = function(_start=true) {
		if (_start) {
			__ins.x = __posStart.x;
			__ins.y = __posStart.y;
		}
		else {
			__ins.x = __posEnd.x;
			__ins.y = __posEnd.y;
		}
		return self;
	}	
	
	static get = function() {
		if (!instance_exists(__ins) ) {
			if (!layer_exists(__layer) ) __layer = layer_create(__depth);
			var _ins = instance_create_layer(__posEnd.x, __posEnd.y, __layer, __obj);
		}
		
		return (__ins);
	}	
	
	static active = function() {
		instance_activate_object(__ins);
		return self;
	}
	
	static deactivate = function() {
		instance_deactivate_object(__ins);
		return self;
	}
	
	/// @param {Real} x
	/// @param {Real} y
	static setStart = function(_x, _y) {
		__posStart.x = _x;
		__posStart.y = _y;
		return self;
	}
	
	/// @param {Real} x
	/// @param {Real} y
	/// @param {Bool} [relative]
	static setEnd = function(_x, _y, _rel=false) {
		__posEnd.x = (!_rel) ? _x : _x - (room_width  / 2);
		__posEnd.y = (!_rel) ? _y : _y - (room_height / 2);
		return self;
	}
		
	#endregion
}