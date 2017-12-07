input:read0 `:day7.txt

d7:{
	programs:first each s:`$" " vs/: x except\:",";
	trees:programs i:where not (subs:3_/:s)~\:`$();
	trees where not trees in (raze subs i)
	}