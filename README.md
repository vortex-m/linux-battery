# Linux Battery Warning Script

This script monitors the battery level of your Linux device and provides audio and visual notifications when the battery level drops below a specified threshold while discharging.

## Features

- Monitors battery percentage and charging status.
- Provides audio warning using `espeak`.
- Displays a desktop notification using `notify-send`.
- Customizable low battery threshold and user name.

## Prerequisites

Make sure you have the following installed:

- **acpi**: For fetching battery status.
- **espeak**: For audio notifications.
- **notify-send**: For desktop notifications (usually part of the `libnotify` package).

You can install these packages using your package manager. For example, on Ubuntu, you can run:

```bash
sudo apt install acpi espeak libnotify-bin
```

## Change the battery configration.
```bash
LOW_BATTERY_THRESHOLD=20  # Set your desired battery threshold percentage
```

## Usage
1. **Run** 
```bash
   ./low_battery_warning.sh &
```
2. **Stop** 
```bash
   kill %1
```
3. **View Background Running** 
```bash
   jobs
```
4. **Troubleshooting** 
```bash
   upower -i /org/freedesktop/UPower/devices/battery_BAT0
```

For any query `mail.mayank001@gmail.com`
