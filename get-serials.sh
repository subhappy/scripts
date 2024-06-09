sudo -s eval 'lshw -class system | grep -m 2 -E "product|serial" | cut -d: -f2 && lshw -class storage | grep serial | cut -d: -f2 && lshw -class disk | grep serial | cut -d: -f2'
# only required on devices with mmc-disks, i.e. lenovo yoga
sudo udevadm info --query=property --name=/dev/mmcblk0 | grep SERIAL | cut -d= -f2
