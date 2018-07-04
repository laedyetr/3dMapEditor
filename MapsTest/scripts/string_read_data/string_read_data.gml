///string_read_data(string,pos)
///@param string
///@param pos

var _retstr;

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

return _retstr;