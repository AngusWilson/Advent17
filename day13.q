test:("0: 3";
	"1: 2";
	"4: 4";
	"6: 4")
	
input:read0 `:day13.txt;
	
d13p1:{
	sum f*'e f:where 0={(a,-1_1_reverse a:til x)y mod -2+x*2} ./: flip (value e;key e:(a!(c:count (a:til max key d))#0),d:(!). flip"J"$": "vs/: x)
	}
	
	
d13p2:{
	where not any each 0={(x+key y)mod' value y}[;mf:-2+2*d:(!). flip"J"$": "vs/: x]each til 5000000
	}