
/*
	SIMPLE FILE LOG by Giapp
*/

// Include define
#if defined _SIMPLE_FILE_LOG_G_
	#endinput
#else
	#define _SIMPLE_FILE_LOG_G_
#endif

// YSI variables (y_va)
#if defined _INC_y_va
	#define flog _y_va_flog
#else
	#define flog _normal_flog
#endif

// Defines
#define filelog flog

// Text
#define CR_F_PR "[FILE LOG] Tep tin %s da duoc tao." // File is created
#define ERR_NE_O_NO "[FILE LOG] Tep tin %s khong ton tai hoac chua duoc mo (fopen)." // File is not exist or not open

fcreate(const file[]) {
	if(fexist(file)) return 0;
	else {
		static File:f;
		f = fopen(file, io_write);
		printf(CR_F_PR, file);
		if(f) {
			fclose(f);
			return 1;
		}
	}
	return 0;
}

_y_va_flog(const file[], const string[], va_args<>)
{
	fcreate(file);
	static File:temp;
	temp = fopen(file, io_append);
	if(temp) {
		static str[1024];
		format(str, sizeof str, string, va_start<2>);
		printf(str);
		format(str, sizeof str, "[%s] | %s\r\n", now(), str);
	    fwrite(temp, str);
	    fclose(temp);
	    return 1;
	}
	else {
		printf(ERR_NE_O_NO, file);
		return 0;
	}
}

_normal_flog(const file[], const string[])
{
	fcreate(file);
	static File:temp;
	temp = fopen(file, io_append);
	if(temp) {
		static str[1024];
		format(str, sizeof str, "[%s] | %s\r\n", now(), string);
	    fwrite(temp, str);
	    printf(string);
	    fclose(temp);
	    return 1;
	}
	else {
		printf(ERR_NE_O_NO, file);
		return 0;
	}
}