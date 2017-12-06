d6p1:{
    states:enlist x;
    while[not any (enlist x) in -1_states;
    states,:x:@[@[x;i;:;0];((i:first where x=s)+1+til s:max x) mod count x;+;1];
    ];
    (count states)-1
    }


d6p2:{
    states:enlist x;
    while[not any (enlist x) in -1_states;
    states,:x:@[@[x;i;:;0];((i:first where x=s)+1+til s:max x) mod count x;+;1];
    ];
    neg(-). where states~\:last states
    }