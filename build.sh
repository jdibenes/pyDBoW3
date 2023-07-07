#!/bin/bash

set -x

cd ${0%%$(basename $0)}
CWD=`pwd`

cd install

#chmod +x boost.sh && ./boost.sh || exit 1

#chmod +x opencv.sh && ./opencv.sh || exit 1

chmod +x dbow3.sh && ./dbow3.sh || exit 1

cd ..

mkdir build
cd build

if [[ "$BUILD_PYTHON" == "python3" ]]; then
  BUILD_PYTHON3="ON"
  pip3 install wheel
else
  BUILD_PYTHON3="OFF"
  pip install wheel
fi

if [[ "$OSTYPE" == "linux-gnu" || "$OSTYPE" == "linux" ]]; then
    cmake -DBUILD_PYTHON3=$BUILD_PYTHON3 \
          -DBUILD_STATICALLY_LINKED=OFF \
          -DOpenCV_DIR=$CWD/install/opencv3/build \
          -DDBoW3_DIR=$CWD/install/DBow3/build \
          -DDBoW3_INCLUDE_DIRS=$CWD/install/DBow3/src \
          -DCMAKE_BUILD_TYPE=Release ../src && make
elif [[ "$OSTYPE" == "darwin"* ]]; then
    : # no support
elif [[ "$OSTYPE" == "cygwin" ]]; then
    : # POSIX compatibility layer and Linux environment emulation for Windows
elif [[ "$OSTYPE" == "msys" ]]; then
    : # shell and GNU utilities compiled for Windows as part of MinGW
elif [[ "$OSTYPE" == "win32" ]]; then
    : # good luck
elif [[ "$OSTYPE" == "freebsd"* ]]; then
    : # ...
else
    : # Unknown.
fi


if [[ "$OSTYPE" == "darwin"* ]]; then
    ln -s pyDBoW3.dylib pyDBoW3.so
fi
