rem git clone https://github.com/rmsalinas/DBow3 DBow3
cd DBow3
mkdir build
cd build

cmake -DLIB_INSTALL_DIR=lib -DOpenCV_DIR=C:/Users/jcds/SDK/opencv_3414/build -DBUILD_SHARED_LIBS=OFF -DUSE_CONTRIB=ON -DBUILD_UTILS=OFF -G "Visual Studio 16 2019" .. 

cd ..
cd ..