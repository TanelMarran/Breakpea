//Apply movement

var x_dist = t_axis_x-axis_x
var y_dist = t_axis_y-axis_y

var x_ratio = abs(x_dist+0.001)/(abs(x_dist)+abs(y_dist)+0.001)
var y_ratio = abs(y_dist+0.001)/(abs(x_dist)+abs(y_dist)+0.001)

var acc = acc_amount;

if (sign(t_axis_x) = -sign(axis_x) and sign(t_axis_y) = -sign(axis_y)) {
	acc = deacc_amount;
}

var x_add = min(abs(x_dist),acc*x_ratio)*sign(x_dist)
var y_add = min(abs(y_dist),acc*y_ratio)*sign(y_dist)

axis_x = axis_x+x_add
axis_y = axis_y+y_add