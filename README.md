## Vending Machine Simulation in Verilog
Project Overview
This project is a Verilog-based implementation of a simple vending machine. The vending machine operates on a finite state machine (FSM) model with three states: IDLE, FIVE_RUPEES, and TEN_RUPEES. The machine accepts inputs in denominations of ₹5 and ₹10, dispenses items when sufficient money is received, and provides appropriate change if required.

## Features
#### Inputs:

clk (Clock): Synchronizes the state transitions.
reset: Resets the machine to its initial state (IDLE).
inp: Represents the money inserted into the machine.
00 → No money.
01 → ₹5.
10 → ₹10.
#### Outputs:

out: Indicates whether an item is dispensed (1 for dispensed, 0 otherwise).
change: Represents the change returned by the machine in denominations of ₹5 and ₹10.
State Transition Logic:

The vending machine transitions between states (IDLE, FIVE_RUPEES, TEN_RUPEES) based on the money inserted.
Dispenses an item if ₹10 or more is accumulated.
Returns appropriate change if excess money is inserted.
#### FSM State Details
#### IDLE (Initial State):

Accepts ₹5 or ₹10 and transitions to the next state (FIVE_RUPEES or TEN_RUPEES).
Outputs:
out = 0
change = 00
#### FIVE_RUPEES:

If no further money is inserted, returns ₹5 as change and transitions back to IDLE.
If ₹10 is inserted, dispenses an item and transitions to IDLE.
Outputs:
out = 1 (if item is dispensed)
change = 01 (if ₹5 is returned)
#### TEN_RUPEES:

Dispenses an item and transitions back to IDLE.
Returns excess change if more than ₹10 is inserted.
 Outputs:
out = 1
change = 01 or 10 (based on the input)
## Code Structure
The project code is divided into three logical sections:

State Transition Logic: Determines the next state based on the current state and input.
Output Logic: Defines the outputs (out and change) based on the current state and input.
Sequential Logic: Synchronizes the state transitions with the clock signal and resets the machine.
How to Use
## Clone the repository
git clone <https://github.com/VLSIJEXA/vending-machine>
Simulate the design using a Verilog simulation tool like ModelSim, Vivado, or Xilinx ISE.
Test the design with various input sequences to verify functionality.
## Simulation
The project can be simulated using any Verilog-compatible simulation tool. Sample testbench files are provided to validate the functionality:

Tests for valid inputs (00, 01, 10).
Edge cases such as rapid clock pulses or incorrect reset behavior.
## Tools Used
Verilog HDL
Simulation Tools:
ModelSim
Vivado
Xilinx ISE
FSM Design Principles
## Project Files
vending_machine.v: The Verilog code for the vending machine.

testbench.v: A testbench for simulating and validating the vending machine design.

README.md: Detailed project description.

LICENSE: Open-source license for the project.
## Future Enhancements
Add support for additional denominations.
Implement an LCD/LED display to show the remaining balance.
Extend the FSM to handle more complex scenarios (e.g., multiple item types or discounts).
## Contributing
Contributions are welcome! Please fork the repository and submit a pull request for any improvements or new features.

## License
This project is licensed under the MIT License. See the LICENSE file for details.

