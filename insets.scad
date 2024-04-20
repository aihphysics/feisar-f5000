module inset(inset_d=5){
    rotate(90, [0,1,0])
    cylinder(10, d=inset_d, $fn=30);
}
module inset_series( radius=54, n=4, inset_d=5 ){
    for(i=[0:1:n]){
        rotate(i*360/n, [0,0,1])
        translate( [radius, 0 ,0 ] ) inset(inset_d);
    }
}
inset_series( radius=54, n=4, inset_d=5 );