mkdir ./Remmina/build
cd ./Remmina/build
# Note: `-DCMAKE_INSTALL_LIBDIR=/usr/lib64` is not required to successfully run Remmina,
#   but `/usr/lib64` is the proper location for the libraries; again, it is not required
#   at all when Remmina is installed to `/usr`
cmake -DCMAKE_BUILD_TYPE=Debug -DCMAKE_INSTALL_PREFIX:PATH=/opt -DCMAKE_INSTALL_LIBDIR=/usr/lib64 \
      -DCMAKE_PREFIX_PATH=/opt ..

make && sudo make install
