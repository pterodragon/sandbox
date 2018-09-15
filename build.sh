cmake -H. -B_builds -DHUNTER_STATUS_DEBUG=OFF -DCMAKE_BUILD_TYPE=Debug -DCMAKE_CXX_FLAGS="-std=c++17" -DHUNTER_Boost_VERSION="1.68.0"
cmake --build _builds --config Debug
