input:read0 `:day8.txt

d8p1:{
    inp:" " vs/: x;
    set[;0]each v:`$inp[;0];
    chk:(">=";"<=";"==";"!=";enlist">";enlist"<")!(">=";"<=";"=";"<>";">";"<");
    adj:(("inc";"dec")!("+:";"-:"));
    value each raze each ( "if[",/:inp[;4],'chk[inp[;5]],'inp[;6],'";",/:inp[;0]),'adj[inp[;1]],'inp[;2],\:"]";
    max value each v
    } 


d8p2:{
	inp:" " vs/: x;
	set[;0]each `mxm,v:`$inp[;0];
	chk:(">=";"<=";"==";"!=";enlist">";enlist"<")!(">=";"<=";"=";"<>";">";"<");
	adj:(("inc";"dec")!("+:";"-:"));
	value each raze each ( "if[",/:inp[;4],'chk[inp[;5]],'inp[;6],'";",/:inp[;0]),'adj[inp[;1]],'inp[;2],'";mxm:max(mxm;",/:inp[;0],\:")]";
	mxm
	}
