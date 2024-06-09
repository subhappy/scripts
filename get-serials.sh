sudo -s eval 'lshw -class system | grep -m 2 -E "product|serial" | cut -d: -f2 && lshw -class storage | grep serial | cut -d: -f2 && lshw -class disk | grep serial | cut -d: -f2'
