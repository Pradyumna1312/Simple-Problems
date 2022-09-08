In this PS it is given that we need to implement XOR, XNOR, NAND and NOR Logics using 2-to-1 Mux.

Now to implement 4 different logics in one unit I'm using 2, 4-to-1 MUX for selecting the logic.

We need to select the logic we need to perform which is a 4-bit input from user and control unit will generate the signals which will drive 4-to-1 MUX so that they can perform the logic assigned.


| Logic | User Code | Internal Selection code | 
|---|---|----|
|NAND|0001|00|
|NAND|0010|01|
|NAND|0100|10|
|NAND|1000|11|
