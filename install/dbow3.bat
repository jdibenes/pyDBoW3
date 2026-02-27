rem git clone https://github.com/rmsalinas/DBow3 DBow3
cd DBow3
mkdir build
cd build

cmake -DLIB_INSTALL_DIR=lib -DOpenCV_DIR=D:/jcds/SDK2/opencv_3_4_16/build -DBUILD_SHARED_LIBS=OFF -DUSE_CONTRIB=ON -DBUILD_UTILS=OFF -G "Visual Studio 16 2019" .. 

cd ..
cd ..