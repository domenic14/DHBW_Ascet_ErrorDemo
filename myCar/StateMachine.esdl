package myCar;

import resources.kmh;

class StateMachine {

	@set
	private kmh current_v;
	@set
	private boolean increase_speed;
	@set
	private boolean decrease_speed;
	const kmh min_v = 20.0[kmh];
	const kmh max_v = 140.0[kmh];
	@set
	private real d_brake;
	@get
	private boolean acc_state;
	@set
	private boolean acc_button;
	@set
	private boolean ign_on;

	@generated("statemachine", "000000")
	public void stateMachineStatemachineTrigger() triggers StateMachineStatemachine;

	@generated("statemachine", "400dae67")
	statemachine StateMachineStatemachine using StateMachineStatemachineStates {
		start off_state;

		state off_state {
			entry {
				acc_state = false;
			}
			transition ign_on && (current_v >= min_v && current_v <= max_v) && (d_brake == 0) && (acc_button || increase_speed || decrease_speed) to activate_button_pressed;
		}

		state activate_button_pressed {
			transition !acc_button && !increase_speed && !decrease_speed to Copy_1_on_state;
		}

		state Copy_1_on_state {
			entry {
				acc_state = true;
			}
			transition !ign_on || (d_brake > 0) || acc_button to deactivate_button_pressed;
		}

		state deactivate_button_pressed {
			transition !acc_button to off_state;
		}
	}
}

@generated("statemachine", "000000")
type StateMachineStatemachineStates is enum {
	off_state,
	Copy_1_on_state,
	activate_button_pressed,
	deactivate_button_pressed
};