# See https://zhuanlan.zhihu.com/p/430738271

export CODE_BASE_PATH=$(readlink -f ../C910_RTL_FACTORY)
#make help
mkdir -p ./work
make cleanVerilator
make compile SIM=verilator
make buildVerilator

export TOOL_EXTENSION=$(readlink -f ../../xuantie-toolchain/Xuantie-900-gcc-elf-newlib-x86_64-V2.0.3/bin)
(cd ./work/obj_dir && make -f Vtop.mk)
make runcase CASE=hello_world SIM=verilator
