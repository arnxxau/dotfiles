temp=$(sensors | grep 'Composite:' | cut -c 16-22)
usage=$(nvidia-smi | grep 'Default' | cut -c 62-65)
fan_speed=$(nvidia-smi | grep 'Default' | cut -c 2-5)

echo $temp - $usage - $fan_speed
