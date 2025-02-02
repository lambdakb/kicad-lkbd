# LambdaKB.dev KiCad Libraries (LKDB)

This repository includes the different symbol and footprint libraries used to create devices at LambdaKB.dev.

## Symbols

| Name                             | Description                                                                 |
| -------------------------------- | --------------------------------------------------------------------------- |
| [`LKBD_MCU.kicad_sym`]           | Micro controller symbols (RP2040, Arduino Pro Micro, SeeedStudio XIAO, ...) |
| [`LKBD_OpticalSensor.kicad_sym`] | Mouse & trackball optical sensor symbols (PMW3360, ...)                     |

[`LKBD_MCU.kicad_sym`]: symbols/README.md#lkbd_mcukicad_sym
[`LKBD_OpticalSensor.kicad_sym`]: symbols/README.md#lkbd_opticalsensorkicad_sym

## Footprints

| Name                        | Description                                                                                             |
| --------------------------- | ------------------------------------------------------------------------------------------------------- |
| [`LKBD_Common.pretty`]        | Common footprint used across all types of devices (THT+SMD diodes / resistors, reset switches, ...)     |
| [`LKBD_KeySwitch.pretty`]     | Mechanical keyboard switches footprints (Cherry MX, Kailh hot-swap socket, ...)                         |
| [`LKBD_MCU.pretty`]           | Micro controller footprints including socketed and soldered footprints (Arduino Pro Micro, KB2040, ...) |
| [`LKBD_MicroSwitch.pretty`]   | Mouse micro-switch footprints (Omron SMD & THT switches, ...)                                           |
| [`LKBD_OLED.pretty`]          | I²C OLED modules footprint (0.91" SSD1306 module, ...)                                                  |
| [`LKBD_OpticalSensor.pretty`] | Mouse & trackball optical sensor footprints (PMW3360, ...)                                              |

[`LKBD_Common.pretty`]: footprints/LKBD_Common.pretty
[`LKBD_KeySwitch.pretty`]: footprints/LKBD_KeySwitch.pretty
[`LKBD_MCU.pretty`]: footprints/LKBD_MCU.pretty
[`LKBD_MicroSwitch.pretty`]: footprints/LKBD_MicroSwitch.pretty
[`LKBD_OLED.pretty`]: footprints/LKBD_OLED.pretty
[`LKBD_OpticalSensor.pretty`]: footprints/LKBD_OpticalSensor.pretty

## License

This KiCad library is distributed under the [MIT License](/LICENSE). However, the 3D models located in the `3dmodels/` folder are licensed separately. Please refer to the `README.md` file in each `*.3dshapes` folder for the specific licensing terms of those models.
