input:27768

//Manhatten distance is x+y in co-ords
//the "zero" in cartesian plane if sprial numbers clockwise is marked by odd numbers cubed
//Given an input, to work out its position we need the next odd number squared to get the zero point


d3p1:{[input]
    //square root the number, find next odd number for the corner point
    sq:{ x+(1;0) mod[;2] x:1+floor x }sqrt input;
    //we have sq x sq grid
    
    //find co-ord of our number
    /it's definitely on the outside, so can count around the outside
    coord:(raze ((til sq),\:0;1_(sq-1),/:(til sq);1_reverse (til sq),\:(sq-1);1_reverse 0,/:til sq)) `int$(sq xexp 2)- input;

    //distance to center point
    sum abs ((2#ceiling sq%2)-1)-'coord
    }
