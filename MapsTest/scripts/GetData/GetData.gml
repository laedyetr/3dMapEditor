///GetData(Data,Key)
///@param Data
///@param Key

var _str = string(argument0);


var _key = argument1;

show_debug_message(string(_key) + string(_str) + " | ");

for(var _i=0; _i<string_length(_str); _i++)
{
	var _n = string_char_at(_str,_i+1);
	
	if(_n = _key)
	{
		return string_read_data(_str,_i+1);
	}
}

return -1;