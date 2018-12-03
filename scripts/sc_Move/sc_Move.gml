/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 78152A88
/// @DnDArgument : "code" "tilemap = layer_tilemap_get_id("Wall"); $(13_10)var bbox_side;$(13_10)$(13_10)//calculate some KNOCKBACK YAY$(13_10)$(13_10)hsp = (moveH*spd) + kb[0];$(13_10)vsp = -((moveV*spd) + kb[1]);$(13_10)$(13_10)$(13_10)//collision check$(13_10)y += vsp;$(13_10)if (vsp > 0){ //down$(13_10)	var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom) & tile_index_mask;$(13_10)	var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom) & tile_index_mask;$(13_10)	colUP = true;$(13_10)	if (t1 != 0 || t2 !=0){ //if collision then snap back to match with 32 by 32 grid$(13_10)		y = ((bbox_bottom & ~15) -2) - sprite_bbox_bottom; $(13_10)		//y+= vsp;$(13_10)		//colUP = true$(13_10)	}$(13_10)	else{$(13_10)		//colUP = false;$(13_10)	}$(13_10)}$(13_10)else if (vsp < 0){ //up$(13_10)	var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_top) & tile_index_mask;$(13_10)	var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_top) & tile_index_mask;$(13_10)	if (t1 != 0 || t2 !=0){ //if collision then snap back to match with 32 by 32 grid$(13_10)		y = (((bbox_top+ 16) & ~15)) - sprite_bbox_top;$(13_10)		//y+=vsp;$(13_10)		//colUP = true;$(13_10)	}$(13_10)	else{$(13_10)		//colUP = false;$(13_10)	}$(13_10)}$(13_10)$(13_10)$(13_10)x += hsp;$(13_10)$(13_10)if (hsp > 0){ //right$(13_10)	var t1 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_top) & tile_index_mask;$(13_10)	var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom) & tile_index_mask;$(13_10)	$(13_10)	if (t1 != 0 || t2 !=0){ //if collision then snap back to match with 32 by 32 grid $(13_10)		x = ((bbox_right & ~15) -2) - sprite_bbox_right; $(13_10)		//x-= hsp;$(13_10)		colDown = true;$(13_10)	}$(13_10)	else{$(13_10)		colDown = false	$(13_10)	}$(13_10)}$(13_10)else if (hsp < 0){ //left$(13_10)	var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_top) & tile_index_mask;$(13_10)	var t2 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom) & tile_index_mask;$(13_10)	$(13_10)	if (t1 != 0 || t2 !=0){ //if collision then snap back to match with 32 by 32 grid$(13_10)		x = (((bbox_left+ 16) & ~15)) + 1  - sprite_bbox_left; $(13_10)		//x-=hsp;$(13_10)		colDown = true;$(13_10)	}$(13_10)	else{$(13_10)		colDown = false;	$(13_10)	}$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)direction = clamp(-moveH*180, 0, 180) + (moveV*90); $(13_10)$(13_10)//KB$(13_10)$(13_10)kb = [0,0];$(13_10)$(13_10)$(13_10)$(13_10)/*$(13_10)//Final Checks$(13_10)x = clamp(x,32,room_width-32);$(13_10)y = clamp(y,32,room_width-32);$(13_10)*/"
tilemap = layer_tilemap_get_id("Wall"); 
var bbox_side;

//calculate some KNOCKBACK YAY

hsp = (moveH*spd) + kb[0];
vsp = -((moveV*spd) + kb[1]);


//collision check
y += vsp;
if (vsp > 0){ //down
	var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom) & tile_index_mask;
	colUP = true;
	if (t1 != 0 || t2 !=0){ //if collision then snap back to match with 32 by 32 grid
		y = ((bbox_bottom & ~15) -2) - sprite_bbox_bottom; 
		//y+= vsp;
		//colUP = true
	}
	else{
		//colUP = false;
	}
}
else if (vsp < 0){ //up
	var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_top) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_top) & tile_index_mask;
	if (t1 != 0 || t2 !=0){ //if collision then snap back to match with 32 by 32 grid
		y = (((bbox_top+ 16) & ~15)) - sprite_bbox_top;
		//y+=vsp;
		//colUP = true;
	}
	else{
		//colUP = false;
	}
}


x += hsp;

if (hsp > 0){ //right
	var t1 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_top) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom) & tile_index_mask;
	
	if (t1 != 0 || t2 !=0){ //if collision then snap back to match with 32 by 32 grid 
		x = ((bbox_right & ~15) -2) - sprite_bbox_right; 
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
		x = (((bbox_left+ 16) & ~15)) + 1  - sprite_bbox_left; 
		//x-=hsp;
		colDown = true;
	}
	else{
		colDown = false;	
	}
}





direction = clamp(-moveH*180, 0, 180) + (moveV*90); 

//KB

kb = [0,0];



/*
//Final Checks
x = clamp(x,32,room_width-32);
y = clamp(y,32,room_width-32);
*//**/