//if(Update or keyboard_check_pressed(ord("U")))
if(keyboard_check_pressed(ord("U")))
{
	vertex_delete_buffer(global.MapModel);
	global.MapModel = vertex_create_buffer();
	
	vertex_begin(global.MapModel,global.Format);
	
	for(var i=0; i<global.MapW; i++)
	for(var t=0; t<global.MapH; t++)
	{
		var DATA = string_get_data(global.MapGridData[# i, t]);
		var TEXDATA = string_get_data(global.MapGridTextures[# i, t]);
		//show_debug_message(ds_list_size(DATA));
		var texs = global.MapTileSize/sprite_get_width(global.Texture);
		var YTEX,XTEX;
		XTEX[0] = real(TEXDATA[| 1])*texs;
		XTEX[1] = real(TEXDATA[| 3])*texs;
		XTEX[2] = real(TEXDATA[| 5])*texs;
		XTEX[3] = real(TEXDATA[| 7])*texs;
		
		YTEX[0] = 0;
		YTEX[1] = 0;
		YTEX[2] = 0;
		YTEX[3] = 0;
		
		
		var x1 = i*global.MapTileSize,
			y1 = t*global.MapTileSize,
			x2 = i*global.MapTileSize+global.MapTileSize,
			y2 = t*global.MapTileSize+global.MapTileSize;
		
		
		
		for(var l=0; l<ds_list_size(DATA)/2; l++)
		{
			var type = DATA[| l*2];
			var val = DATA[| l*2+1];
			
			switch(type)
			{
				case "f":
					ModFloorTile(global.MapModel,x2,y1,x1,y2,real(val),0,0,1,1,1);//XTEX[0],YTEX[0],XTEX[0]+texs,YTEX[0]+texs,1);
				break;
				
				
				case "c":
					ModFloorTile(global.MapModel,x1,y1,x2,y2,real(val),0,0,1,1,-1);//XTEX[0],YTEX[0],XTEX[0]+texs,YTEX[0]+texs,-1);
				break;
			}
		}
		
		//Build Walls
		
		
		if(i-1 >= 0)
		{
			var DATAR = string_get_data(global.MapGridData[# i-1, t]);
		
			var wallData = ds_list_create();
			//var DATAR = string_get_data(global.MapGridData[# i, t]);
		
			for(var l=0; l<ds_list_size(DATAR)/2; l++)
			{
				var type = DATAR[| l*2];
				var val = DATAR[| l*2+1];
			
				if(type == "f" or type == "c")
				{
					ds_list_add(wallData,type,val);
					ds_list_add(wallData,val,val);
				}
			
			}

		
		
		
		}
	//ModWallTile(global.MapModel,0,0,32,32,0,0,0,0,1,1);
	
	}
	vertex_end(global.MapModel);
	
	ds_list_destroy(DATA);
	ds_list_destroy(DATAR);
	//ds_list_destroy(DATA);
	ds_list_destroy(TEXDATA);
	
}
