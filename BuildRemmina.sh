mkdir ./Remmina/build
cd ./Remmina/build

cmake -DCMAKE_BUILD_TYPE=Debug -DCMAKE_INSTALL_PREFIX:PATH=/opt/remmina_devel/remmina -DCMAKE_PREFIX_PATH=/opt/remmina_devel/freerdp ..

make && sudo make install
