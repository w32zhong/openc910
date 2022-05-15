export CODE_BASE_PATH=$(readlink -f ../C910_RTL_FACTORY)
export TOOL_EXTENSION=/opt/toolchain/riscv64/bin
#make help
make compile
make runcase CASE=hello_world SIM=verilator
