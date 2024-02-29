package myCar;

import resources.DriverMessages;
import resources.curve_real;
import resources.CarMessages;

static class Driver
writes DriverMessages.accButton, DriverMessages.d_brake, DriverMessages.d_power, DriverMessages.decreaseSpeed, DriverMessages.increaseSpeed, DriverMessages.ignition
reads DriverMessages.acc_state, CarMessages.currentVehicleSpeed {

	@get
	private characteristic boolean accButton = false;
	characteristic real brake = 0.0;
	characteristic real power = 0.0;
	characteristic boolean decreaseSpeed = false;
	characteristic boolean increaseSpeed = false;
	characteristic boolean ignition = false;
	cast cs;
	characteristic curve_real curve_real_instance[3] = {
		{ 0.0, 1.0, 2.0 },
		{ 0.0, 0.0, 0.0 }
	};

	@thread
	@generated("blockdiagram", "14165e91")
	public void calc() {
		DriverMessages.d_brake = brake; // Main/calc 1
		DriverMessages.d_power = power; // Main/calc 2
		DriverMessages.decreaseSpeed = decreaseSpeed; // Main/calc 3
		DriverMessages.increaseSpeed = increaseSpeed; // Main/calc 4
		DriverMessages.ignition = ignition; // Main/calc 5
		DriverMessages.accButton = accButton; // Main/calc 6
	}
}