
/*
	SIMPLE GET TIME by Giapp
*/

#if defined _SIMPLE_GET_TIME___
	#endinput
#else
	#define _SIMPLE_GET_TIME___
#endif

#define currentdate curdate
#define currenttime	curtime

now() {
	static year, month, day, hour, minute, second, str[32];
	getdate(year, month, day);
	gettime(hour, minute, second);
	format(str, sizeof str, "%02d:%02d:%02d - %02d/%02d/%d", hour, minute, second, day, month, year);
	return str;
}

curdate() {
	static year, month, day, str[32];
	getdate(year, month, day);
	format(str, sizeof str, "%02d/%02d/%d", day, month, year);
	return str;
}

curtime() {
	static hour, minute, second, str[32];
	gettime(hour, minute, second);
	format(str, sizeof str, "%02d:%02d:%02d", hour, minute, second);
	return str;
}
