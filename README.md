# LambdaKB.dev KiCad Libraries (LKDB)

[![License](https://img.shields.io/badge/License-MIT-00ad00?style=for-the-badge&logo=opensourceinitiative&logoColor=white)](/LICENSE)
[![KiCad](https://img.shields.io/badge/KiCad-v9-orange?style=for-the-badge&logo=kicad&logoColor=white&logoSize=auto)](https://www.kicad.org/)

This repository includes the different symbol and footprint libraries used to create devices at LambdaKB.dev as well as our KiCad project templates.

## Symbols

| Name                             | Description                                                                 |
| -------------------------------- | --------------------------------------------------------------------------- |
| [`LKBD_MCU.kicad_sym`]           | Micro controller symbols (RP2040, Arduino Pro Micro, SeeedStudio XIAO, ...) |
| [`LKBD_OpticalSensor.kicad_sym`] | Mouse & trackball optical sensor symbols (PMW3360, ...)                     |

[`LKBD_MCU.kicad_sym`]: symbols/README.md#lkbd_mcukicad_sym
[`LKBD_OpticalSensor.kicad_sym`]: symbols/README.md#lkbd_opticalsensorkicad_sym

## Footprints

| Name                          | Description                                                                                             |
| ----------------------------- | ------------------------------------------------------------------------------------------------------- |
| [`LKBD_Common.pretty`]        | Common footprint used across all types of devices (THT+SMD diodes / resistors, reset switches, ...)     |
| [`LKBD_KeySwitch.pretty`]     | Mechanical keyboard switches footprints (Cherry MX, Kailh hot-swap socket, ...)                         |
| [`LKBD_MCU.pretty`]           | Micro controller footprints including socketed and soldered footprints (Arduino Pro Micro, KB2040, ...) |
| [`LKBD_MicroSwitch.pretty`]   | Mouse micro-switch footprints (Omron SMD & THT switches, ...)                                           |
| [`LKBD_OLED.pretty`]          | I²C OLED modules footprint (0.91" SSD1306 module, ...)                                                  |
| [`LKBD_OpticalSensor.pretty`] | Mouse & trackball optical sensor footprints (PMW3360, ...)                                              |
| [`LKBD_PCBFab.pretty`]        | PCB fabrication related footprints (such as PCB marks or serial number placeholders)                    |

[`LKBD_Common.pretty`]: footprints/README.md#lkbd_commonpretty
[`LKBD_KeySwitch.pretty`]: footprints/README.md#lkbd_keyswitchpretty
[`LKBD_MCU.pretty`]: footprints/README.md#lkbd_mcupretty
[`LKBD_MicroSwitch.pretty`]: footprints/README.md#lkbd_microswitchpretty
[`LKBD_OLED.pretty`]: footprints/README.md#lkbd_oledpretty
[`LKBD_OpticalSensor.pretty`]: footprints/README.md#lkbd_opticalsensorpretty
[`LKBD_PCBFab.pretty`]: footprints/README.md#lkbd_pcbfab

## Templates

| Name                    | Description                                                                               |
| ----------------------- | ----------------------------------------------------------------------------------------- |
| [`Mechanical-Keyboard`] | Basic template for mechanical keyboards, including standardized design rules & BOM fields |

[`Mechanical-Keyboard`]: templates/Mechanical-Keyboard

## License

This KiCad library is distributed under the [MIT License](/LICENSE). However, the 3D models located in the `3dmodels/` folder are licensed separately. Please refer to the [`3dmodels/README.md`](3dmodels/README.md) file for the their specific licensing terms.
