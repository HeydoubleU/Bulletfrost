cd C:/Users/MAIN
cmake -G "Visual Studio 16 2019" -S source\repos\Bulletfrost -B source\builds\Bulletfrost -DCMAKE_INSTALL_PREFIX=source\bifrost_libs
cmake --build source\builds\Bulletfrost --target install --config Release