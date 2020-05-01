visible = false;

var view = view_camera[0];
var coordX = camera_get_view_x(view);
var coordY = camera_get_view_y(view);

instance_create_layer(coordX, coordY, global.layerMenu, oContinueMenu);
