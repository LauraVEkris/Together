//set checkpoint cat
if (place_meeting(x,y,oCat)){
global.checkpointC = id;
global.checkpointxC = x;
global.checkpointyC = y;
global.checkpointRC = room;
}

//set checkpoint human
if (place_meeting(x,y,oHuman)){
global.checkpointH = id;
global.checkpointxH = x;
global.checkpointyH = y;
global.checkpointRH = room;
}

//changing checkpoints visuals
//cat
if (global.checkpointRC == room){
 if (global.checkpointC == id) image_index = 1;
 else image_index = 0;
}
//human
if (global.checkpointRH == room){
 if (global.checkpointH == id) image_index = 2;
 else image_index = 0;
}
//both
if (global.checkpointRC == room) and (global.checkpointRH == room){
if (global.checkpointH == id) and (global.checkpointC == id) image_index = 3;
 else if (global.checkpointC == id) image_index = 1;
 else if (global.checkpointH == id) image_index = 2;
 else image_index = 0;
}
