# Day 2: Timing Libraries, Synthesis Approaches, and Efficient Flip-Flop Coding

## Objectives
- Learn the role of **timing libraries (.lib files)** in digital design.  
- Compare **hierarchical and flat synthesis flows**.  
- Practice **reliable flip-flop coding styles** in Verilog.  
- Run **simulation and synthesis** with Yosys using the SKY130 PDK.  

---

## 📘 Timing Libraries

### SKY130 PDK Overview
The **SKY130 PDK** is an open-source **Process Design Kit** developed for 130nm CMOS technology.  
It includes essential data files used by EDA tools:  
- **.lib** → timing, delay, and power information  
- **.lef/.gds** → physical layout and geometry info  
- **spice** → transistor-level models  

The **.lib file** is critical during synthesis because it tells the tool about **cell delays, setup/hold times, power, and drive strength**.

### Decoding `tt_025C_1v80`
- **tt** → Typical process corner (transistor characteristics are “average”)  
- **025C** → Represents an operating temperature of **25°C**  
- **1v80** → Indicates nominal voltage of **1.8V**  

Together, this defines the **process, voltage, and temperature (PVT)** conditions.

### Opening a .lib File
```bash
sudo apt install gedit
gedit sky130_fd_sc_hd__tt_025C_1v80.lib
