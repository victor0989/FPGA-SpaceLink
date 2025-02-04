# **FPGA-SpaceLink: FPGA Integration for ISS (International Space Station)**

FPGA-SpaceLink is an innovative project dedicated to integrating Field-Programmable Gate Arrays (FPGAs) into the International Space Station (ISS) to support critical applications such as communication, video processing, and cosmic/solar radiation sensing. The project also investigates cutting-edge quantum-based techniques for radiation mitigation and propulsion designs inspired by the Parker Solar Probe.

For additional insights into space station architecture and related challenges, check out this [book on the International Space Station](https://www.amazon.es/International-Space-Station-Architecture-Beyond/dp/0993072135).

![Nasa_telecomunications](https://github.com/victor0989/FPGA-SpaceLink/blob/main/nasa_images/antennas/locations/Captura%20de%20pantalla%202025-02-04%20124115.png)


---

## Table of Contents

- [Overview](#overview)
- [FPGA Selection for Space Applications](#fpga-selection-for-space-applications)
- [FPGA Programming & Constraints](#fpga-programming--constraints)
  - [Basic Constraints for LEDs and GPIO](#basic-constraints-for-leds-and-gpio)
  - [Ethernet Communication](#ethernet-communication)
  - [Radiation Sensor Integration (SPI/I2C)](#radiation-sensor-integration-spii2c)
- [Cosmic Radiation Sensor Integration](#cosmic-radiation-sensor-integration)
- [Video and Communication Integration](#video-and-communication-integration)
- [Advanced Space Propulsion & Design Inspirations](#advanced-space-propulsion--parker-solar-probe-inspired-designs)
- [Conclusion](#conclusion)
- [Future Work](#future-work)
- [License](#license)

---

## Overview

This project focuses on integrating **Field-Programmable Gate Arrays (FPGAs)** into the **International Space Station (ISS)** for applications including:

- **Communication Modules**
- **Video Processing and Camera Systems**
- **Cosmic and Solar Radiation Sensors**

Key challenges include addressing **radiation resistance, power efficiency,** and the **extreme environmental conditions** encountered in space. Additionally, the project explores:

- **Quantum-based techniques** for advanced radiation mitigation.
- **Engine designs inspired by the Parker Solar Probe** to boost system efficiency in harsh conditions.
- ![FPGA-SpaceLink Overview](https://github.com/victor0989/FPGA-SpaceLink/blob/main/Captura%20de%20pantalla%202025-02-02%20014008.png)

---

🌌 Cosmic Radiation Sensor Integration
Radiation Challenges & Quantum Innovations
Radiation in space can cause Single Event Upsets (SEUs) in FPGAs. To mitigate these effects, FPGA-SpaceLink explores:

🎥 Video and Communication Integration
Video Processing for ISS
The ZCU102 implements a video funtionality.
---


## FPGA Selection for Space Applications

For **Earth-based prototyping**, we use the **Xilinx ZCU102 (Zynq UltraScale+)** because it offers:
- ✅ **Integrated ARM processor** for sensor control and data processing.
- ✅ **Ethernet, GPIO, and PCIe support** for high-speed communications.
- ✅ **Video processing capabilities** suitable for camera integration.

For **actual deployment in space**, the following radiation-tolerant FPGAs are considered:
- **Xilinx Kintex UltraScale XQRKU060**
- **Microchip (Microsemi) RTG4**
- **Xilinx Virtex-5QV**

---

## 🔧 FPGA Programming & Constraints

FPGA pin assignments are defined using a **.xdc constraint file**.

### Basic Constraints for LEDs and GPIO
```tcl
set_property PACKAGE_PIN L18 [get_ports LED]
set_property IOSTANDARD LVCMOS18 [get_ports LED]

---

Ethernet Communication
set_property PACKAGE_PIN AA11 [get_ports ETH_TXD[0]]
set_property PACKAGE_PIN AB12 [get_ports ETH_RXD[0]]

Radiation Sensor Integration (SPI/I2C)
set_property PACKAGE_PIN C4 [get_ports I2C_SCL]
set_property PACKAGE_PIN C5 [get_ports I2C_SDA]


//To integrate the External High Definition Camera (EHDC) with your ZCU106 board in the ISS communication system, here are some key points to consider:
//Video Compatibility: The EHDC uses H.264 compression with an MPEG2 transport stream for HD video (720P60). The ZCU106 is capable of handling these video formats, which is a good starting point.
//Ethernet Interface: The EHDC communicates via Ethernet based on EWC (802.11n, 5.2 GHz). The ZCU106 has Ethernet interface capabilities that can be used for this integration.
//Power Requirements: The EHDC has a power limit of less than 200W. Ensure that your power system on the ZCU106 can handle this requirement.
//Control and Telemetry: The EHDC requires automatic control (iris, focus, gain, white balance, etc.) with manual override, as well as telemetry and metadata. The programmable logic on the ZCU106 can be used to implement these controls.

//Connectors and Expansion: Use the FMC-HPC connectors on the ZCU106 to expand the inputs and outputs, allowing the connection of multiple sensors and cameras.
//Video Compression: The ZCU106 has a Video Codec Unit (VCU) that can be used for H.264 compression, which is compatible with the EHDC requirements.



