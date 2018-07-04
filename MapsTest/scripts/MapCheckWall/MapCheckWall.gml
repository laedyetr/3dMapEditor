///MapCheckWall(list,point)
///@param list
///@param point

for(var pont = 0; pont < ds_list_size(argument0)/2; pont++)
{
	if(argument1 > ds_list_find_value(argument0,pont*2) and argument1 < ds_list_find_value(argument0,pont*2+1))
	{
		return true;
	}
}

return false;