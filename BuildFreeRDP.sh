mkdir ./FreeRDP/build
cd ./FreeRDP/build

cmake -DCMAKE_BUILD_TYPE=Debug -DWITH_SSE2=ON -DWITH_CUPS=on -DWITH_ICU=on -DWITH_PULSE=on \
      -DWITH_X264=OFF -DWITH_OPENH264=ON \
      -DCMAKE_INSTALL_PREFIX:PATH=/opt/remmina_devel/freerdp ..

make && sudo make install

echo /opt/remmina_devel/freerdp/lib | sudo tee /etc/ld.so.conf.d/freerdp_devel.conf > /dev/null
sudo ldconfig
