# Implementing NAND, NOR, XOR and XNOR gates using 2-to-1 MUX in a single unit with the help of 4:1 Mux.

In this PS it is given that we need to implement XOR, XNOR, NAND and NOR Logics using 2-to-1 Mux.

Now to implement 4 different logics in one unit I'm using 2, 4-to-1 MUX for selecting the logic.

We need to select the logic we need to perform which is a 4-bit input from user and control unit will generate the signals which will drive 4-to-1 MUX so that they can perform the logic assigned.


| Logic | User Code | Internal Selection code | 
|---|---|----|
|NAND|0001|00|
|NOR|0010|01|
|XOR|0100|10|
|XNOR|1000|11|

With the Lattice Radiant FPGA Design suite the above logic is implemented and Netlist is created which gives the below RTL design.

![image](https://user-images.githubusercontent.com/54210084/189540400-5550c6d7-9019-4b88-8dab-31d906dad14a.png)

Using System Verilog a Test bench is implemented for all the components i.e. Mux2_1, Mux4_1 and Model and the output for 4:1 Mux is shown below. With the help of "assert" keyword the results of Mux2_1 and Mux4_1 were verified and no discrepancy was found.

![image](https://user-images.githubusercontent.com/54210084/189540384-231a7852-0a4b-452b-a623-a7047e852e71.png)
4:1 MUX Simulation result

Using System Verilog a Test bench is implemented for all the components i.e. Mux2_1, Mux4_1 and Model and the output for 4:1 Mux is shown below. With the help of "assert" keyword the results were verified and no discrepancy was found.

![image](https://user-images.githubusercontent.com/54210084/189541300-6ee7b39f-5334-4357-a07c-38bda0958cc2.png)
Model Simulation result

**_Note_**: There are some Assertion errors in Final Model Simulation and will be rectified.


## FIXED!!
The assertion errors in the previous test bench are removed.
### Cause for the failure?
Assertion in the previous testbench was suitablw only for combinational circuit and not for sequenctial circuit. The outputs which were coming were based on the same instant whereas the assertiion should have happened 1 clock pulse afterwards.
Meaning all the results shown before were wrong.

Then why Assertion didn't fail?

Reason: Becoz the outputs of the previous instruction was 'conincidently' same as what was required at that time.
### Fix
    Using "##" Operator
**_##_** is an operator used for asserting with time delays.

![image](https://user-images.githubusercontent.com/54210084/189899005-c55c8ddb-aa1c-460b-a3e7-aedae8d6ad72.png)
    
