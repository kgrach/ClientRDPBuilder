mkdir ./FreeRDP/build
cd ./FreeRDP/build
# In the following line, the `DWITH_PULSE=ON` option needs to be included
# Note: `-DCMAKE_INSTALL_LIBDIR=/usr/lib64` is required when `-DCMAKE_INSTALL_PREFIX:PATH`
#       is not `/usr`; otherwise Remmina will not find the `libfreerdp*` libraries
# Note: `-DWITH_OPENH264=ON -DWITH_X264=OFF` makes FreeRDP use H264 which results
#       in extreme good quality for a quite good performance

cmake -DCMAKE_BUILD_TYPE=Debug -DWITH_SSE2=ON -DWITH_CUPS=on -DWITH_ICU=on -DWITH_PULSE=on \
      -DWITH_X264=OFF -DWITH_OPENH264=ON -DWITH_FFMPEG=OFF \
      -DCMAKE_INSTALL_LIBDIR=/opt/freerdp/lib64 -DCMAKE_INSTALL_PREFIX:PATH=/opt/freerdp .

make && sudo make install

# If you install FreeRDP and Remmina to `/opt`, you need to add `/opt/bin` to PATH
#export PATH="$PATH:/opt/bin"
#echo 'export PATH="$PATH:/opt/bin"' >> ${HOME}/.bashrc
