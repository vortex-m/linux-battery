LOW_BATTERY_THRESHOLD=20
USER_NAME="Mayank"
while true; do
  battery_level=$(acpi -b | grep -P -o '[0-9]+(?=%)')
  charging_status=$(acpi -b | grep -oP 'Charging|Discharging')
  if [ "$battery_level" -lt "$LOW_BATTERY_THRESHOLD" ] && [ "$charging_status" == "Discharging" ]; then
    espeak "Hey $USER_NAME, your battery is running low. It is at $battery_level percent. Please plug in your charger."
    notify-send "Low Battery Warning" "Hey $USER_NAME, your battery is at $battery_level%. Please plug in your charger."
  fi
  sleep 60
done