; PID autotune bed for 60C
; Ender-3 V2 Neo

M503 ; Print current firmware settings

M140 S60 ; Set bed temp to 60C
G28 ; Auto-home
G90 ; use absolute coordinates
G0 X110 Y110 Z5 F5000; Move to just above the middle of the build plate
M190 S60 ; Wait until bed reaches 60C

M303 C10 E-1 S60 U1 ; 10 cycles of PID tune for E=-1 (bed)

M503 ; Print current firmware settings
M500 ; Save the results

; Done!
M300 P30 ; chirp 30 ms
G4 P120 ; delay 120 ms
M300 P30 ; chirp 30 ms
G4 P120 ; delay 120 ms
M300 P30 ; chirp 30 ms
G4 P120 ; delay 120 ms
