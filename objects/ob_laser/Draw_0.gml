/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 430F9C4A
/// @DnDArgument : "code" "var a, b, c, yy;$(13_10)tile = layer_tilemap_get_id("Wall");$(13_10)$(13_10)line = [0,0,0,0];$(13_10)limit = 0;$(13_10)px = x;$(13_10)py = y;$(13_10)$(13_10)var vX = camera_get_view_x(view_camera[0]);$(13_10)var vY = camera_get_view_y(view_camera[0])$(13_10)$(13_10)show_debug_message(string(view_yport[0]));$(13_10)$(13_10)$(13_10)switch(dir){$(13_10)	case 0: //up$(13_10)	limit = py;$(13_10)	while(limit > view_yport[0]){$(13_10)		if (tilemap_get_at_pixel(tile,px,limit) != 0){$(13_10)			//means wall$(13_10)			break;$(13_10)		}$(13_10)		limit--;$(13_10)	}$(13_10)	line = [px, py , px, limit];$(13_10)	break;$(13_10)	case 1: //down$(13_10)	limit = py;$(13_10)	while(limit < view_yport[0] + view_hport[0]){$(13_10)		if (tilemap_get_at_pixel(tile,px,limit) != 0){$(13_10)			//means wall$(13_10)			break;$(13_10)		}$(13_10)		limit++;$(13_10)	}$(13_10)	line = [px, py , px, limit];$(13_10)	break;$(13_10)	case 2: //left$(13_10)	limit = px;$(13_10)	while(limit > view_xport[0]){$(13_10)		if (tilemap_get_at_pixel(tile,limit,py) != 0){$(13_10)			//means wall$(13_10)			break;$(13_10)		}$(13_10)		limit--;$(13_10)	}$(13_10)	line = [px, py , limit, py];$(13_10)	break;$(13_10)	case 3: //right$(13_10)	limit = x;$(13_10)	while(limit < view_xport[0]+view_wport[0]){$(13_10)		if (tilemap_get_at_pixel(tile,limit,y) != 0){$(13_10)			//means wall$(13_10)			break;$(13_10)		}$(13_10)		limit++;$(13_10)	}$(13_10)	line = [px, py , limit, py];$(13_10)	break;$(13_10)}$(13_10)$(13_10)$(13_10)if (collision_line(line[0], line[1], line[2], line[3], ob_enemyP, false, true)){$(13_10)	pt = [line[0], line[1]];$(13_10)	while(!place_meeting(pt[0], pt[1], ob_enemyP))	{$(13_10)	switch(dir){$(13_10)		case 0: //dec y$(13_10)		pt[1]--;$(13_10)		break;$(13_10)		case 1:$(13_10)		pt[1]++;$(13_10)		break;$(13_10)		case 2:$(13_10)		pt[0]--;$(13_10)		break;$(13_10)		case 3:$(13_10)		pt[0]++;$(13_10)		break;$(13_10)	}$(13_10)	}$(13_10)	x = pt[0];$(13_10)	y = pt[1];$(13_10)	$(13_10)}$(13_10)else{$(13_10)	x = line[2];$(13_10)	y = line[3];$(13_10)}$(13_10)	$(13_10)a = point_distance(x, y, px, py) mod 32;$(13_10)$(13_10)b = point_distance(x, y, px, py) - a;$(13_10)$(13_10)c = 0;$(13_10)for (c = 0; c< b-64; c += 32){$(13_10)		switch(dir){$(13_10)			case 0:$(13_10)			draw_sprite_ext(spr, -1, x, y+32 + c, 1, 1, 0, c_white, 1);$(13_10)			break;$(13_10)			case 1:$(13_10)			draw_sprite_ext(spr, -1, x, y-32 - c, 1, 1, 180, c_white, 1);$(13_10)			break;$(13_10)			case 2:$(13_10)			draw_sprite_ext(spr, -1, x+32 + c, y, 1, 1, -90, c_white, 1);$(13_10)			break;$(13_10)			case 3:$(13_10)			draw_sprite_ext(spr, -1, x-32 - c, y, 1, 1, 90, c_white, 1);$(13_10)			break;$(13_10)				$(13_10)		}$(13_10)}$(13_10)$(13_10)switch(dir){$(13_10)	case 0:$(13_10)	draw_sprite_general(spr, -1, 0,0, wid, a, px, py- (a/2), 1, 1, 0, c_white, c_white, c_white, c_white, 1);$(13_10)	break;$(13_10)	case 1:$(13_10)	draw_sprite_general(spr, -1, 0,0, wid, a, px, py+ (a/2), 1, 1, 180, c_white, c_white, c_white, c_white, 1);$(13_10)	break;$(13_10)	case 2:$(13_10)	draw_sprite_general(spr, -1, 0,0, wid, a, px- (a/2), py, 1, 1, -90, c_white, c_white, c_white, c_white, 1);$(13_10)	break;$(13_10)	case 3:$(13_10)	draw_sprite_general(spr, -1, 0,0, wid, a, px+ (a/2), py, 1, 1, -90, c_white, c_white, c_white, c_white, 1);$(13_10)	break;$(13_10)	$(13_10)}$(13_10)$(13_10)	$(13_10)$(13_10)draw_self()"
var a, b, c, yy;
tile = layer_tilemap_get_id("Wall");

line = [0,0,0,0];
limit = 0;
px = x;
py = y;

var vX = camera_get_view_x(view_camera[0]);
var vY = camera_get_view_y(view_camera[0])

show_debug_message(string(view_yport[0]));


switch(dir){
	case 0: //up
	limit = py;
	while(limit > view_yport[0]){
		if (tilemap_get_at_pixel(tile,px,limit) != 0){
			//means wall
			break;
		}
		limit--;
	}
	line = [px, py , px, limit];
	break;
	case 1: //down
	limit = py;
	while(limit < view_yport[0] + view_hport[0]){
		if (tilemap_get_at_pixel(tile,px,limit) != 0){
			//means wall
			break;
		}
		limit++;
	}
	line = [px, py , px, limit];
	break;
	case 2: //left
	limit = px;
	while(limit > view_xport[0]){
		if (tilemap_get_at_pixel(tile,limit,py) != 0){
			//means wall
			break;
		}
		limit--;
	}
	line = [px, py , limit, py];
	break;
	case 3: //right
	limit = x;
	while(limit < view_xport[0]+view_wport[0]){
		if (tilemap_get_at_pixel(tile,limit,y) != 0){
			//means wall
			break;
		}
		limit++;
	}
	line = [px, py , limit, py];
	break;
}


if (collision_line(line[0], line[1], line[2], line[3], ob_enemyP, false, true)){
	pt = [line[0], line[1]];
	while(!place_meeting(pt[0], pt[1], ob_enemyP))	{
	switch(dir){
		case 0: //dec y
		pt[1]--;
		break;
		case 1:
		pt[1]++;
		break;
		case 2:
		pt[0]--;
		break;
		case 3:
		pt[0]++;
		break;
	}
	}
	x = pt[0];
	y = pt[1];
	
}
else{
	x = line[2];
	y = line[3];
}
	
a = point_distance(x, y, px, py) mod 32;

b = point_distance(x, y, px, py) - a;

c = 0;
for (c = 0; c< b-64; c += 32){
		switch(dir){
			case 0:
			draw_sprite_ext(spr, -1, x, y+32 + c, 1, 1, 0, c_white, 1);
			break;
			case 1:
			draw_sprite_ext(spr, -1, x, y-32 - c, 1, 1, 180, c_white, 1);
			break;
			case 2:
			draw_sprite_ext(spr, -1, x+32 + c, y, 1, 1, -90, c_white, 1);
			break;
			case 3:
			draw_sprite_ext(spr, -1, x-32 - c, y, 1, 1, 90, c_white, 1);
			break;
				
		}
}

switch(dir){
	case 0:
	draw_sprite_general(spr, -1, 0,0, wid, a, px, py- (a/2), 1, 1, 0, c_white, c_white, c_white, c_white, 1);
	break;
	case 1:
	draw_sprite_general(spr, -1, 0,0, wid, a, px, py+ (a/2), 1, 1, 180, c_white, c_white, c_white, c_white, 1);
	break;
	case 2:
	draw_sprite_general(spr, -1, 0,0, wid, a, px- (a/2), py, 1, 1, -90, c_white, c_white, c_white, c_white, 1);
	break;
	case 3:
	draw_sprite_general(spr, -1, 0,0, wid, a, px+ (a/2), py, 1, 1, -90, c_white, c_white, c_white, c_white, 1);
	break;
	
}

	

draw_self()