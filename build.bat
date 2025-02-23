cd install

call dbow3.bat

cd ..
mkdir build
cd build

cmake -DBUILD_PYTHON3=ON -DBUILD_STATICALLY_LINKED=OFF -DPYTHON_EXECUTABLE=C:/Users/jcds/AppData/Local/Programs/Python/Python36/python.exe -DPYTHON_INCLUDE_DIR=C:/Users/jcds/AppData/Local/Programs/Python/Python36/include -DPYTHON_LIBRARY=C:/Users/jcds/AppData/Local/Programs/Python/Python36/libs/python36.lib -DBOOST_ROOT=C:/Users/jcds/SDK/boost_1_87_0 -DOpenCV_DIR=C:/Users/jcds/SDK/opencv_3414/build -DDBoW3_DIR=../install/DBow3/build -DDBoW3_INCLUDE_DIRS=../install/DBow3/src -DCMAKE_BUILD_TYPE=Release -G "Visual Studio 16 2019" ../src

cd ..