cmake_minimum_required(VERSION 3.2)

include("cmake/HunterGate.cmake")
HunterGate(
    URL "https://github.com/ruslo/hunter/archive/v0.23.21.tar.gz"
    SHA1 "15e27f2fe47d4f162b5cab1e6dfecc699ebaa304"
)

project(Foo)

hunter_add_package(Boost COMPONENTS regex system filesystem)
find_package(Boost CONFIG REQUIRED regex system filesystem)

add_executable(foo src/foo.cpp)
target_link_libraries(foo PUBLIC Boost::regex Boost::system Boost::filesystem)
