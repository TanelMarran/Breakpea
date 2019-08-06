//Apply movement

var x_dist = t_axis_x-axis_x
var y_dist = t_axis_y-axis_y

var absx = abs(x_dist);
var absy = abs(y_dist);

var x_ratio = absx/(absx+absy+0.001);
var y_ratio = 1-x_ratio;

var acc = acc_amount;

var x_add = min(absx,acc*x_ratio)*sign(x_dist)
var y_add = min(absy,acc*y_ratio)*sign(y_dist)

axis_x = axis_x+x_add
axis_y = axis_y+y_add

if(z != 0) {
	axis_z -= z_gravity;
} else {
	axis_z = 0;
}

z = max(0,z+axis_z);