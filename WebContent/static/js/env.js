// JavaScript Document
//　Macintosh           　->  MacOS
//　Windows95/98/NT/2000/XP  ->　Windows
//　UNIX                  ->　UNIX
function getOSType()
{
    var uAgent  = navigator.userAgent.toUpperCase();
    if (uAgent.indexOf("MAC") >= 0) return "MacOS";
    if (uAgent.indexOf("WIN") >= 0) return "Windows";
    if (uAgent.indexOf("X11") >= 0) return "UNIX";
    return "";
}
//　Firefox ->  Firefox
//　Netscape Navigator ->  Netscape
//　Internet Explorer  ->　Explorer
//　Safari  ->　Safari
//　Opera  ->　Opera
function getBrowserName()
{
    var aName  = navigator.appName.toUpperCase();
    var uName = navigator.userAgent.toUpperCase();
    if (uName.indexOf("SAFARI") >= 0)  return "SF";
    if (uName.indexOf("OPERA") >= 0)  return "OP";
    if (uName.indexOf("FIREFOX") >= 0)  return "FF";
    if (aName.indexOf("NETSCAPE") >= 0)  return "NN";
    if (aName.indexOf("MICROSOFT") >= 0) return "IE";
    return "";
}
function getBrowserVersion()
{
	var browser = getBrowserName();
	var version = 0;
	var s = 0;
	var e = 0;
	var appVer  = navigator.appVersion;
	var uName  = navigator.userAgent.toUpperCase();
	if (browser == "Safari")
	{
		s = uName.indexOf("SAFARI/",0);
		version = (uName.substring(s+7,s+99));
		if (version < 400) version = 1;
		if (version >= 400) version = 2;
	}
	if (browser == "Opera")
	{
		s = uName.indexOf("OPERA",0) + 6;
		e = uName.indexOf(" ",s);
		version = parseFloat(uName.substring(s,e));
	}
	if (browser == "Firefox")
	{
		s = uName.indexOf("FIREFOX/",0);
		version = parseFloat(uName.substring(s+8,s+8+3));
	}
	if (browser == "Netscape")
	{
		s = appVer.indexOf(" ",0);
		version = eval(appVer.substring(0,s));
		if (version >= 5) version++;
	}
	if (browser == "Explorer")
	{
		appVer  = navigator.userAgent;
		s = appVer.indexOf("MSIE ",0) + 5;
		e = appVer.indexOf(";",s);
		version = eval(appVer.substring(s,e));
	}
	return version;
}

function getCookie(key) {
    var tmp1 = document.cookie.split("; ");
    var cnum = tmp1.length;
    for(i = 0; i < cnum; i++) {
        tmp2 = tmp1[i].split("=") ;
        if (tmp2[0] == key) {
            return(unescape(tmp2[1]));
        }
    }
    return("");
}

function LoadCookies() {
    var dir_event= getCookie("LSD_Dir_Event");
	return dir_event;
}
