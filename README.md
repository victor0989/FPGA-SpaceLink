# **FPGA-SpaceLink: FPGA Integration for ISS (International Space Station)**

FPGA-SpaceLink is an innovative project dedicated to integrating Field-Programmable Gate Arrays (FPGAs) into the International Space Station (ISS) to support critical applications such as communication, video processing, and cosmic/solar radiation sensing. The project also investigates cutting-edge quantum-based techniques for radiation mitigation and propulsion designs inspired by the Parker Solar Probe.

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

🌌 Cosmic Radiation Sensor Integration
Radiation Challenges & Quantum Innovations
Radiation in space can cause Single Event Upsets (SEUs) in FPGAs. To mitigate these effects, FPGA-SpaceLink explores:

Quantum-based shielding techniques
Advanced error correction algorithms
Radiation Sensors Deployed
TE Connectivity RADFETs: For monitoring accumulated radiation dose.
AMS TID Sensors: For detecting ionizing radiation.
Timepix3 (CERN): An advanced sensor for particle tracking.
Integration Steps
Connect sensors to the FPGA via I2C or SPI.
Filter and process sensor signals using FPGA digital logic and DSP blocks.
Transmit data via Ethernet or SpaceWire to the ISS communication modules.

🎥 Video and Communication Integration
Video Processing for ISS
The ZCU102 implements a video pipeline that:

Captures video via MIPI CSI or HDMI IN from cameras.
Processes video using FPGA logic for filtering, compression, and image enhancement.
Transmits video via Ethernet or SpaceWire to ground stations.
Communication Protocols
To ensure reliable data transfer in space, the project integrates the SpaceWire protocol, which is widely adopted in satellite and ISS communications.

🛰️ Advanced Space Propulsion & Parker Solar Probe-Inspired Designs
Future iterations of FPGA-SpaceLink will explore:

FPGA-controlled propulsion models inspired by the Parker Solar Probe to enhance space navigation.
Quantum-enhanced radiation shielding to further protect onboard electronics.
FPGA-driven plasma propulsion systems to improve maneuverability and efficiency in deep space missions.

Conclusion
Earth-based prototyping is performed with the ZCU102 board.
For ISS deployment, select radiation-tolerant FPGAs (e.g., Kintex UltraScale XQRKU060, Microsemi RTG4, or Virtex-5QV).
Utilize Ethernet or SpaceWire for robust, high-speed communication.
Integrate radiation sensors via I2C/SPI and process data using the FPGA's ARM cores and digital logic.
Investigate quantum-based techniques for error correction and enhanced shielding to boost system reliability.


