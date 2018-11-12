/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 78152A88
/// @DnDArgument : "code" "$(13_10)var bbox_side;$(13_10)$(13_10)hsp = moveH*spd;$(13_10)vsp = -moveV*spd;$(13_10)$(13_10)$(13_10)$(13_10)//collision$(13_10)/*$(13_10)if (hsp > 0){$(13_10)	bbox_side = bbox_right;	$(13_10)}$(13_10)else{$(13_10)	bbox_side = bbox_left;	$(13_10)}$(13_10)$(13_10)if(tilemap_get_at_pixel(tilemap,bbox_side +hsp, bbox_top) !=0) || (tilemap_get_at_pixel(tilemap,bbox_side+hsp, bbox_bottom) != 0){$(13_10)	if (hsp > 0){$(13_10)		x = x - (x mod 32) + 31 -(bbox_right - x);	$(13_10)	}$(13_10)	else{$(13_10)		x = x - (x mod 32) - (bbox_left - x);	$(13_10)	}$(13_10)	hsp = 0;$(13_10)}$(13_10)*/$(13_10)$(13_10)/*$(13_10)if (vsp > 0){$(13_10)	bbox_side = bbox_bottom;	$(13_10)}$(13_10)else{$(13_10)	bbox_side = bbox_top;	$(13_10)}$(13_10)$(13_10)if(tilemap_get_at_pixel(tilemap, bbox_left,bbox_side +vsp) !=0) || (tilemap_get_at_pixel(tilemap, bbox_right, bbox_side+vsp) != 0){$(13_10)	if (vsp > 0){$(13_10)		y = y - (y % 32) + 31 -(bbox_bottom - y);	$(13_10)	}$(13_10)	else{$(13_10)		y = y - (y % 32) - (bbox_top - y);	$(13_10)	}$(13_10)	vsp = 0;$(13_10)}*/$(13_10)$(13_10)y += vsp;$(13_10)$(13_10)if (vsp > 0){ //down$(13_10)	var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom) & tile_index_mask;$(13_10)	var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom) & tile_index_mask;$(13_10)	colUP = true;$(13_10)	if (t1 != 0 || t2 !=0){ //if collision then snap back to match with 32 by 32 grid$(13_10)		y = ((bbox_bottom & ~31) -2) - sprite_bbox_bottom; $(13_10)		//y+= vsp;$(13_10)		colUP = true$(13_10)	}$(13_10)	else{$(13_10)		colUP = false;$(13_10)	}$(13_10)}$(13_10)else if (vsp < 0){ //up$(13_10)	var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_top) & tile_index_mask;$(13_10)	var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_top) & tile_index_mask;$(13_10)	if (t1 != 0 || t2 !=0){ //if collision then snap back to match with 32 by 32 grid$(13_10)		y = (((bbox_top+ 32) & ~31)) - sprite_bbox_top;$(13_10)		//y+=vsp;$(13_10)		colUP = true;$(13_10)	}$(13_10)	else{$(13_10)		colUP = false;$(13_10)	}$(13_10)}$(13_10)$(13_10)$(13_10)x += hsp;$(13_10)$(13_10)if (hsp > 0){ //right$(13_10)	var t1 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_top) & tile_index_mask;$(13_10)	var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom) & tile_index_mask;$(13_10)	$(13_10)	if (t1 != 0 || t2 !=0){ //if collision then snap back to match with 32 by 32 grid $(13_10)		x = ((bbox_right & ~31) -2) - sprite_bbox_right; $(13_10)		//x-= hsp;$(13_10)		colDown = true;$(13_10)	}$(13_10)	else{$(13_10)		colDown = false	$(13_10)	}$(13_10)}$(13_10)else if (hsp < 0){ //left$(13_10)	var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_top) & tile_index_mask;$(13_10)	var t2 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom) & tile_index_mask;$(13_10)	$(13_10)	if (t1 != 0 || t2 !=0){ //if collision then snap back to match with 32 by 32 grid$(13_10)		x = (((bbox_left+ 32) & ~31)) - sprite_bbox_left; $(13_10)		//x-=hsp;$(13_10)		colDown = true;$(13_10)	}$(13_10)	else{$(13_10)		colDown = false;	$(13_10)	}$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)direction = clamp(-moveH*180, 0, 180) + (moveV*90); $(13_10)$(13_10)//KB$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)/*$(13_10)//Final Checks$(13_10)x = clamp(x,32,room_width-32);$(13_10)y = clamp(y,32,room_width-32);$(13_10)*/"

var bbox_side;

hsp = moveH*spd;
vsp = -moveV*spd;



//collision
/*
if (hsp > 0){
	bbox_side = bbox_right;	
}
else{
	bbox_side = bbox_left;	
}

if(tilemap_get_at_pixel(tilemap,bbox_side +hsp, bbox_top) !=0) || (tilemap_get_at_pixel(tilemap,bbox_side+hsp, bbox_bottom) != 0){
	if (hsp > 0){
		x = x - (x mod 32) + 31 -(bbox_right - x);	
	}
	else{
		x = x - (x mod 32) - (bbox_left - x);	
	}
	hsp = 0;
}
*/

/*
if (vsp > 0){
	bbox_side = bbox_bottom;	
}
else{
	bbox_side = bbox_top;	
}

if(tilemap_get_at_pixel(tilemap, bbox_left,bbox_side +vsp) !=0) || (tilemap_get_at_pixel(tilemap, bbox_right, bbox_side+vsp) != 0){
	if (vsp > 0){
		y = y - (y % 32) + 31 -(bbox_bottom - y);	
	}
	else{
		y = y - (y % 32) - (bbox_top - y);	
	}
	vsp = 0;
}*/

y += vsp;

if (vsp > 0){ //down
	var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom) & tile_index_mask;
	colUP = true;
	if (t1 != 0 || t2 !=0){ //if collision then snap back to match with 32 by 32 grid
		y = ((bbox_bottom & ~31) -2) - sprite_bbox_bottom; 
		//y+= vsp;
		colUP = true
	}
	else{
		colUP = false;
	}
}
else if (vsp < 0){ //up
	var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_top) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_top) & tile_index_mask;
	if (t1 != 0 || t2 !=0){ //if collision then snap back to match with 32 by 32 grid
		y = (((bbox_top+ 32) & ~31)) - sprite_bbox_top;
		//y+=vsp;
		colUP = true;
	}
	else{
		colUP = false;
	}
}


x += hsp;

if (hsp > 0){ //right
	var t1 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_top) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom) & tile_index_mask;
	
	if (t1 != 0 || t2 !=0){ //if collision then snap back to match with 32 by 32 grid 
		x = ((bbox_right & ~31) -2) - sprite_bbox_right; 
		//x-= hsp;
		colDown = true;
	}
	else{
		colDown = false	
	}
}
else if (hsp < 0){ //left
	var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_top) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom) & tile_index_mask;
	
	if (t1 != 0 || t2 !=0){ //if collision then snap back to match with 32 by 32 grid
		x = (((bbox_left+ 32) & ~31)) - sprite_bbox_left; 
		//x-=hsp;
		colDown = true;
	}
	else{
		colDown = false;	
	}
}





direction = clamp(-moveH*180, 0, 180) + (moveV*90); 

//KB





/*
//Final Checks
x = clamp(x,32,room_width-32);
y = clamp(y,32,room_width-32);
*//**/