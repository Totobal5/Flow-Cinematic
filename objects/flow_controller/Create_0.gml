/// @description
// Feather ignore all
creator = noone;
sons = [];

layerName  = layer_get_name(layer);

sequenceHeadpos = 0;
sequenceElement  = layer_sequence_create(layer, x, y, sequence);
sequenceInstance = layer_sequence_get_instance(sequenceElement);

sequenceObject	= sequence_get(sequence);
sequenceTracks	= sequenceObject.tracks;		
sequenceActiveTracks = sequenceInstance.activeTracks;

sequenceLenght	 = layer_sequence_get_length(sequenceElement);

sequenceEnd = function() {};

sequenceReturn = false;
cycles = 0;

sequenceActors = [];
checkActors = true;
layer_sequence_play(sequenceElement);