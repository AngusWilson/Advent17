test:("0 <-> 2"
	;"1 <-> 1"
	;"2 <-> 0, 3, 4"
	;"3 <-> 2, 4"
	;"4 <-> 2, 3, 6"
	;"5 <-> 6"
	;"6 <-> 4, 5")
	
input:read0 `:day12.txt
	
d12p1:{
	d:(value each(raze m-2)#'x)!value each raze (2+m:where each "-"=x)_'x;
	n:0;
	e:();
	while[count n:(raze d n) except e;e,:n];
	count distinct e
	}
	
d12p2:{
	d:(value each(raze m-2)#'x)!value each raze (2+m:where each "-"=x)_'x;
	func:{[d;n]
		e:();
		while[count n:(raze d n) except e;e,:n];
		distinct e
		};		
	while[count d;d:func[d;first key d] _d;c+:1];
	c
	}
