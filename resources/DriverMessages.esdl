package resources;

data interface DriverMessages {
	real d_brake = 0.0;
	real d_power = 0.0;
	boolean accButton = false;
	boolean increaseSpeed = false;
	boolean decreaseSpeed = false;
	boolean acc_state = false;
	kmh selected_v = 0.0 [kmh];
	boolean ignition = false;
}
