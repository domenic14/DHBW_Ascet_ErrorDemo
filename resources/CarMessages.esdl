package resources;

data interface CarMessages {
	@a2l_unit_label("km/h")
	velocity currentVehicleSpeed = 0.0 [kmh];
	real v_power = 0.0;
	real v_brake = 0.0;
	real steering = 0.0;
	real bearing = 0.0;
	@a2l_unit_label("m")
	m x = 0.0 [m];
	@a2l_unit_label("m")
	m y = 0.0 [m];
	s time = 0.0 [s];
}
