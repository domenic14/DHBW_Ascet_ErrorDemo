package tests;

import resources.DriverMessages;
import SystemLib.CounterTimer.StopWatch;
import SystemLib.Miscellaneous.EdgeRising;
import resources.CarMessages;

singleton class Test_Brake
writes DriverMessages.ignition, DriverMessages.d_power, DriverMessages.d_brake, DriverMessages.accButton
reads CarMessages.v_brake, DriverMessages.acc_state {

	characteristic boolean execute_brake_test = false;
	StopWatch accelerateStopWatch;
	EdgeRising EdgeRising_instance;
	StopWatch accOnStopwatch;
	boolean test_succeeded;
	EdgeRising EdgeRising_instance_2;
	EdgeRising EdgeRising_instance_3;

	@thread
	@generated("blockdiagram", "46c226f4")
	public void calc() {
		if (execute_brake_test) {
			DriverMessages.ignition = true; // Main/calc 1/if-then 1
			accelerateStopWatch.compute(); // Main/calc 1/if-then 2
			if (accelerateStopWatch.value() > 3.0) {
				DriverMessages.d_power = 0.0; // Main/calc 1/if-then 3/if-then 1
				DriverMessages.d_brake = 6.9; // Main/calc 1/if-then 3/if-then 2
				DriverMessages.accButton = true; // Main/calc 1/if-then 3/if-then 3
				accOnStopwatch.compute(); // Main/calc 1/if-then 3/if-then 4
				if (accOnStopwatch.value() > 0.1) {
					DriverMessages.accButton = false; // Main/calc 1/if-then 3/if-then 5/if-then 1
				} // Main/calc 1/if-then 3/if-then 5
				if ((6.9 == CarMessages.v_brake) && (!DriverMessages.acc_state)) {
					test_succeeded = true; // Main/calc 1/if-then 3/if-then 6/if-then 1
				} // Main/calc 1/if-then 3/if-then 6
			} else {
				DriverMessages.d_power = 100.0; // Main/calc 1/if-then 3/if-else 1
			} // Main/calc 1/if-then 3
		} // Main/calc 1
	}
}