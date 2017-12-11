input:read0 `:day11.txt

d11p1:{
	x:`$","vs first x;
	h:`n`ne`nw`s`se`sw!(0 1 1;1 1 0;-1 0 1;0 -1 -1;1 0 -1;-1 -1 0);

	d:sum each flip h x;

	/maximum moves
	mxm:where signum[d i]=h[;i:first where (abs d)=max abs d];

	/min moves
	mnm:where signum[d i]=h[;i:first where (abs d)=min abs d];

	mv:(d i)#first mxm inter mnm;

	count mv,c#h?`long$b%c:max b:d-$[count r:sum h[mv];r;0 0 0];
	
	}