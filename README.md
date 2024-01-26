# Simplified SystemVerilog Difftest Environment

## How to Use

To use this simplified SystemVerilog Difftest environment, follow these steps:

1. Change directory to the `software/functest/` folder:

    ```bash
    cd software/functest/
    make run  # test all 
    make run NAMES = dummy # test one
    ```

2. Synthesizing SystemVerilog
   - [Reference 1](https://zhuanlan.zhihu.com/p/479482290)
   - [Reference 2](https://github.com/thu-cs-lab/verilog-coding-standard)

3. Reference code
   - [DreamCore](https://github.com/lizhirui/DreamCore)

4. riscv toolchain mirror
   - [plct-mirror](https://help.mirrors.cernet.edu.cn/riscv-toolchains/)

## Plan
 1. Both support verilator and vcs