//Apply movement

var dir = point_direction(axis_x,axis_y,t_axis_x,t_axis_y);
var len = point_distance(axis_x,axis_y,t_axis_x,t_axis_y);

var minacc = min(len,acc_amount);

var x_add = lengthdir_x(minacc,dir);
var y_add = lengthdir_y(minacc,dir);

axis_x = axis_x+x_add
axis_y = axis_y+y_add

if(z != 0) {
	axis_z -= z_gravity;
} else {
	axis_z = 0;
}

z = max(0,z+axis_z);