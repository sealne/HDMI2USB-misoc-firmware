```
        __ _____  __  _______  ___    __  _________
       / // / _ \/  |/  /  _/ |_  |  / / / / __/ _ )
      / _  / // / /|_/ // /  / __/  / /_/ /\ \/ _  |
     /_//_/____/_/  /_/___/ /____/  \____/___/____/
```

# HDMI2USB MiSoC Firmware

The HDMI2USB project develops affordable hardware options to record and stream
HD videos (from HDMI & DisplayPort sources) for conferences, meetings and user
groups.

### Supported Boards

This firmware is supported on the following to boards;

 * Digilent Atlys - http://digilentinc.com/atlys/
   The original board used for HDMI2USB prototyping.
   Use `BOARD=atlys` with this board.

 * Numato Opsis - http://hdmi2usb.tv/numato-opsis
   The first production board made in conjunction with TimVideos.us project.
   Use `BOARD=opsis` with this board.

# Getting started

1. See scripts/README.md for firmware build instructions

# Status

atlys_base:
* BaseSoC validated: CPU + DDR2 + UART
* MiniSoC validated: BaseSoC + 10/100Mbps Ethernet MAC handled by the CPU

opsis_base:
* BaseSoC validated: CPU + DDR3 + UART
* MiniSoC validated: BaseSoC + 1Gbps Ethernet MAC handled by the CPU

atlys_hdmi2ethernet:
* EtherboneSoC validated: BaseSoC + 10/100Mbps HW Ethernet UDP/IP stack and Etherbone
* VideomixerSoC validated: EtherboneSoC + HDMI in + HDMI out
* HDMI2EthernetSoC validated: VideomixerSoC + JPEG encoder + UDP streaming

atlys_hdmi2usb:
* VideomixerSoC validated: MiniSoC + 2 x HDMI in + 2 x HDMI out
* HDMI2USBSoC validated: VideomixerSoC + JPEG encoder + USB streaming

# Documentation

USB UART - Use Linux drivers at https://github.com/shenki/exar-uart-driver

Original HDMI2USB firmware can be found at http://github.com/timvideos/HDMI2USB

 * The HDMI2USB wiki (http://github.com/timvideos/HDMI2USB/wiki) has lots of
   information about the Digilent Atlys board.

 * The HDMI2USB Developer Documentation - http://j.mp/hdmi2usb-dev-gdoc

# Contact

Mailing List:
 * https://groups.google.com/forum/#!forum/hdmi2usb
 * hdmi2usb@googlegroups.com
