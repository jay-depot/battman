# BATTMAN - Battery Manager

Battman is a set of simple scripts, and a systemd service that attempt to keep
your battery healthy by limiting your upper and lower charge thresholds to 60%
and 40% respectively, most of the time. It is designed to work with 
`power-profiles-daemon` and `upowerd`.

At any time, the user may request a full charge when needed by running
`battman --charge-full-now`, and the battery will be allowed to charge fully 
until the computer is disconnected from AC power or restarted, at which point 
the battery thresholds will be reset to 60% and 40%.

## Installation

### Source:

### AUR:

## Usage

### Commands:

`battman` - Display the current battery charge thresholds.

`battman --help` - Display the help message.

`battman --charge-full-now` - Allow the battery to charge fully until the next
  time the system is restarted or disconnected from AC power. Will fail if the 
  system is not currently connected to AC power.

`battman --defaults` - Reset the thresholds to 60% and 40%.

## License
This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.
