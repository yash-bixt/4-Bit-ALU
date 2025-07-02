This project implements a 4-bit Arithmetic Logic Unit (ALU) in Verilog HDL. The ALU is designed to perform basic arithmetic and logical operations on two 4-bit inputs. It serves as a foundational building block for digital systems such as processors and microcontrollers, demonstrating core principles of RTL design and digital electronics.

The ALU supports arithmetic operations like addition and subtraction, as well as logical operations including AND, OR, and XOR. It also provides status outputs for zero detection and carry-out, which are critical for building conditional logic in larger digital systems.

The project includes a synthesizable Verilog module of the ALU along with a comprehensive testbench that applies various input combinations to verify correct functionality across all supported operations. The testbench ensures the ALU behaves as expected for normal and edge cases, such as overflows or zero results.

This ALU project not only showcases proficiency in Verilog coding and simulation practices but also emphasizes good design practices like modular code structure and thorough verification. It is a key step toward building more complex digital subsystems like CPUs or embedded controllers.

Key Features of the ALU:

Accepts two 4-bit input operands.

Supports multiple operations selectable by an opcode input, including addition, subtraction, AND, OR, and XOR.

Generates a 4-bit output result along with status flags (zero and carry).

Fully verified with a dedicated testbench covering functional correctness across all operations.

Modular and synthesizable design ready for FPGA implementation or ASIC integration.

Educational Value:
Through this project, I gained hands-on experience in writing efficient and synthesizable Verilog, understanding arithmetic and logic circuit design, and developing thorough verification strategies. This project helped reinforce concepts of combinational logic, conditional structures in RTL, and proper testbench methodology, providing a solid foundation for future work in more advanced digital systems such as pipelined processors and SoCs.
