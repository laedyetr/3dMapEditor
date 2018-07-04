///string_read_data(string)
///@param string

var _retstr;
var _sts = 0;
var _curkey = "";
var _DATA = ds_list_create();

for(var _i=0; _i<string_length(argument0); _i++)
{
	var _d = string_char_at(argument0,_i+1);
	
	switch(_sts)
	{
		case 0:
			if(string_digits(_d) == "")
			{
				_sts = 1;
				
				ds_list_add(_DATA,_d);
				ds_list_add(_DATA,"");
				_curkey = ds_list_size(_DATA);
			}
		break;
		
		
		case 1:
			var _d2 = string_char_at(argument0,_i+2);
			if(string_digits(_d) != "")
			{
				ds_list_set(_DATA,_curkey-1,ds_list_find_value(_DATA,_curkey-1)+_d);
			}
			if(string_digits(_d2) == "")
			{
				_sts = 0;
				
			}
		break;
	}
}

return _DATA;

/*
	for(var _p=0; _p<8; _p++)
	{
		var _d = string_char_at(argument0,argument1+_p+1);
	
		show_message(_d);
		if(string_digits(_d) != "")
		{
			_retstr+=_d;
		}
		else
		{
			break;
		}
	
	
	}