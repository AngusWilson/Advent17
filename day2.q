//Sanitise input by splitting on tabs and int casting
input:"I"$"\t" vs/: read0 `:d2.txt

//Sum differences between min and max on each line
d2p1:{
    sum (max each x)-'min each x
    };


//Each line check where a mod gives zero
//pick co-ords of pair that is not div with itself
//div larger by smaller
d2p1:{
    sum {
        nums:first x a where 2=count each a:where each 0=x mod/:x;
        (max nums)%min nums
        } each x
    };    
