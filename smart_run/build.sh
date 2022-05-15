# See https://zhuanlan.zhihu.com/p/430738271

export CODE_BASE_PATH=$(readlink -f ../C910_RTL_FACTORY)
export TOOL_EXTENSION=/opt/toolchain/riscv64/bin
#make help
mkdir -p ./work
make cleanVerilator
make compile SIM=verilator
make buildVerilator
make runcase CASE=hello_world SIM=verilator
