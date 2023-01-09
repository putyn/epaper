:: kikit should be installed https://github.com/yaqwsx/KiKit
:: run this inside kicad command prompt (on windows) to produce production files 
:: delete older files & create output folder
@echo off
rmdir /s /q .\output
mkdir output
:: create 1x1 panel with preset (3mm alignment holes for stencil, mousebites)
kikit panelize -p kikit-panel-preset.json epaper-breakout.kicad_pcb .\output\epaper-breakout-panel.kicad_pcb
:: gerbers for JLCPCB
kikit fab jlcpcb --no-drc .\output\epaper-breakout-panel.kicad_pcb .\output\