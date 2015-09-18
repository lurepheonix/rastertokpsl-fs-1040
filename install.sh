#!/bin/bash
if [ ! -d /usr/share/cups/model ]; then
 sudo mkdir /usr/share/cups/model
fi
if [ ! -d /usr/share/cups/model/Kyocera ]; then
sudo mkdir /usr/share/cups/model/Kyocera
fi
sudo cp -vf Kyocera_FS-1040GDI.ppd /usr/share/cups/model/Kyocera/Kyocera_FS-1040GDI.ppd
sudo cp -vf rastertokpsl /usr/libexec/cups/filter/rastertokpsl
sudo cp -vf rastertokpsl-fixed /usr/libexec/cups/filter/rastertokpsl-fixed
sudo chmod +x /usr/libexec/cups/filter/rastertokpsl-fixed
if [ -f /usr/libexec/cups/filter/rastertokpsl ] && [ -f /usr/libexec/cups/filter/rastertokpsl-fixed ] && [ -f /usr/share/cups/model/Kyocera/Kyocera_FS-1040GDI.ppd ]; then
echo "Installation completed"
else
echo "Installation failed"
fi



