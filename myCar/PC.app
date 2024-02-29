application {
	class myCar.myCar
	class myCar.Driver
	class myCar.Control
	class SystemLib.Miscellaneous.DeltaTimeService
	class tests.Test_Brake
}
schedule {
	startup {
	}
	shutdown {
	}
	task Task0 priority 0 period 10ms delay 0ms {
		process myCar.Driver.calc
		process tests.Test_Brake.calc
		process myCar.Control.calc
		process myCar.myCar.calc
	}
}