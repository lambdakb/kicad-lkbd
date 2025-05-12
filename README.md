# LambdaKB.dev KiCad Libraries (LKDB)

[![License](https://img.shields.io/badge/License-MIT-00ad00?style=for-the-badge&logo=opensourceinitiative&logoColor=white)](/LICENSE)
[![KiCad](https://img.shields.io/badge/KiCad-v9-orange?style=for-the-badge&logo=kicad&logoColor=white&logoSize=auto)](https://www.kicad.org/)

This repository includes the different symbol and footprint libraries used to create devices at LambdaKB.dev as well as our KiCad project templates.

## Disclaimer

**This repository is provided AS IS, without any warranty. Use at your own risk.**
**We do not assume any responsibility for damages or broken PCBs due to the use of the libraries present in this repository and any potential errors in it.**

We try to keep every library as up-to-date and accurate as possible, but we cannot guarantee that it is always correct.
If you find any errors in this library, please open an issue or pull-request. We will try to fix them as soon as possible.

## Libraries

### Symbols

| Name                             | Description                                                                 |
| -------------------------------- | --------------------------------------------------------------------------- |
| [`LKBD_LED.kicad_sym`]           | LED symbols (SK6812MINI-E, WS2812B, ...)                                    |
| [`LKBD_MCU.kicad_sym`]           | Micro controller symbols (RP2040, Arduino Pro Micro, SeeedStudio XIAO, ...) |
| [`LKBD_OpticalSensor.kicad_sym`] | Mouse & trackball optical sensor symbols (PMW3360, ...)                     |

[`LKBD_LED.kicad_sym`]: symbols/README.md#lkbd_ledkicad_sym
[`LKBD_MCU.kicad_sym`]: symbols/README.md#lkbd_mcukicad_sym
[`LKBD_OpticalSensor.kicad_sym`]: symbols/README.md#lkbd_opticalsensorkicad_sym

### Footprints

| Name                          | Description                                                                                             |
| ----------------------------- | ------------------------------------------------------------------------------------------------------- |
| [`LKBD_Common.pretty`]        | Common footprint used across all types of devices (THT+SMD diodes / resistors, reset switches, ...)     |
| [`LKBD_Connector.pretty`]     | Connector footprints (Pin Headers, JST-SH, ...)     |
| [`LKBD_KeySwitch.pretty`]     | Mechanical keyboard switches footprints (Cherry MX, Kailh hot-swap socket, ...)                         |
| [`LKBD_MCU.pretty`]           | Micro controller footprints including socketed and soldered footprints (Arduino Pro Micro, KB2040, ...) |
| [`LKBD_MicroSwitch.pretty`]   | Mouse micro-switch footprints (Omron SMD & THT switches, ...)                                           |
| [`LKBD_MountingHole.pretty`]  | Common mounting hole footprints (pads, slots, ...)                                                      |
| [`LKBD_OLED.pretty`]          | I²C OLED modules footprint (0.91" SSD1306 module, ...)                                                  |
| [`LKBD_OpticalSensor.pretty`] | Mouse & trackball optical sensor footprints (PMW3360, ...)                                              |
| [`LKBD_PCBFab.pretty`]        | PCB fabrication related footprints (such as PCB marks or serial number placeholders)                    |
| [`LKBD_PlateMX.pretty`]       | Plate cutout for Cherry MX style keyswitches (various sizes)                                            |
| [`LKBD_StabMX.pretty`]        | Stabilizer for Cherry MX style keyswitches (various sizes)                                              |

[`LKBD_Common.pretty`]: footprints/README.md#lkbd_commonpretty
[`LKBD_Connector.pretty`]: footprints/README.md#lkbd_connectorpretty
[`LKBD_KeySwitch.pretty`]: footprints/README.md#lkbd_keyswitchpretty
[`LKBD_MCU.pretty`]: footprints/README.md#lkbd_mcupretty
[`LKBD_MicroSwitch.pretty`]: footprints/README.md#lkbd_microswitchpretty
[`LKBD_MountingHole.pretty`]: footprints/README.md#lkbd_mountingholepretty
[`LKBD_OLED.pretty`]: footprints/README.md#lkbd_oledpretty
[`LKBD_OpticalSensor.pretty`]: footprints/README.md#lkbd_opticalsensorpretty
[`LKBD_PCBFab.pretty`]: footprints/README.md#lkbd_pcbfabpretty
[`LKBD_PlateMX.pretty`]: footprints/README.md#lkbd_platemxpretty
[`LKBD_StabMX.pretty`]: footprints/README.md#lkbd_stabmxpretty

### Templates

| Name                    | Description                                                                               |
| ----------------------- | ----------------------------------------------------------------------------------------- |
| [`Mechanical-Keyboard`] | Basic template for mechanical keyboards, including standardized design rules & BOM fields |

[`Mechanical-Keyboard`]: templates/Mechanical-Keyboard

## Contributing

### Best practices

To ensure consistency and maintain quality, follow these best practices when adding or modifying components:

- Symbols and footprints must be in the official KiCad format (v6+ recommended).
- All names (library items, fields, files) and descriptions must be in English.
- Component outlines should be drawn on the appropriate Fabrication layer (`F.Fab` or `B.Fab`) with accurate dimensions.
- Silkscreen around a component should be spaced at least 0.1 mm from the component's outline on the `F.Fab`/`B.Fab` layer.
- If a variant of a component is needed, it should be named `<component_name>_<variant_suffix>`, where the suffix describes the variant (e.g., `nSilk` for no silkscreen, `sqSilk` for square silkscreen).
- Use `REF**` as the default reference designator in symbols.
- Validate symbols and footprints with KiCad's built-in tools before adding them.

## License

This KiCad library is distributed under the [MIT License](/LICENSE). However, the 3D models located in the `3dmodels/` folder are licensed separately. Please refer to the [`3dmodels/README.md`](3dmodels/README.md) file for their specific licensing terms.
