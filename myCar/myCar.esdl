package myCar;

import resources.CarMessages;
import resources.a;
import SystemLib.Miscellaneous.DeltaTimeService;
import resources.s;

static class myCar
reads CarMessages.steering, CarMessages.v_power, CarMessages.v_brake
writes CarMessages.x, CarMessages.y, CarMessages.bearing, CarMessages.currentVehicleSpeed {

	myDrive_3 myVehicle;
	characteristic a g = 9.81[a];

	@thread
	@generated("blockdiagram", "e34622f7")
	public void calc() {
		CarMessages.y = myVehicle.y; // Main/calc 1
		CarMessages.bearing = myVehicle.bearing; // Main/calc 2
		CarMessages.x = myVehicle.x; // Main/calc 3
		myVehicle.move(CarMessages.v_power, CarMessages.v_brake, (DeltaTimeService.deltaT * 1.0[s]), g, CarMessages.steering); // Main/calc 4
		CarMessages.currentVehicleSpeed = myVehicle.v; // Main/calc 5
	}
}