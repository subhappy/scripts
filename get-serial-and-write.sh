# does not yet show disk serial from MMC disks, i.e. Lenovo Yoga. This is because they simply show up as a 'device'
sudo -s eval 'lshw -class system | grep -m 2 -E "product|serial" | cut -d: -f2 >pcaid.json && lshw -class storage | grep serial | cut -d: -f2 >>pcaid.json && lshw -class disk | grep serial | cut -d: -f2 >>pcaid.json'
sudo curl --data-binary @pcaid.json -H "Content-Type: application/json" -X POST https://script.google.com/macros/s/AKfycbxOH86x9uE7lV_wDpconS7_xnMsjFEjEG8tJua6rFO1GXHmUELF1okcWkTiQB79G4AbTw/exec 2>&1 >/dev/null
