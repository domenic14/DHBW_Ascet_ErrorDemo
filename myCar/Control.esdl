package myCar;

import resources.DriverMessages;
import resources.CarMessages;

static class Control
reads DriverMessages.accButton, DriverMessages.d_brake, DriverMessages.d_power, DriverMessages.decreaseSpeed, DriverMessages.increaseSpeed, CarMessages.currentVehicleSpeed, DriverMessages.ignition
writes DriverMessages.acc_state, CarMessages.v_power, CarMessages.v_brake {

	StateMachine StateMachine_instance_2;

	@thread
	@generated("blockdiagram", "778ec683")
	public void calc() {
		StateMachine_instance_2.stateMachineStatemachineTrigger(); // Main/calc 1
		DriverMessages.acc_state = StateMachine_instance_2.acc_state; // Main/calc 2
		StateMachine_instance_2.ign_on = DriverMessages.ignition; // Main/calc 3
		StateMachine_instance_2.acc_button = DriverMessages.accButton; // Main/calc 4
		StateMachine_instance_2.decrease_speed = DriverMessages.decreaseSpeed; // Main/calc 5
		StateMachine_instance_2.increase_speed = DriverMessages.increaseSpeed; // Main/calc 6
		StateMachine_instance_2.current_v = CarMessages.currentVehicleSpeed; // Main/calc 7
		StateMachine_instance_2.d_brake = DriverMessages.d_brake; // Main/calc 8
		if (DriverMessages.ignition) {
			CarMessages.v_power = DriverMessages.d_power; // Main/calc 9/if-then 1
		} // Main/calc 9
		CarMessages.v_brake = DriverMessages.d_brake; // Main/calc 10
	}
}