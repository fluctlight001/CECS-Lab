CUR_PATH := $(shell pwd)
SOFTWARE_PATH := $(CUR_PATH)/software/functest
SIMULATOR_PATH := $(CUR_PATH)/simulator

C_PROG ?= dummy

run:
	@$(MAKE) -C $(SOFTWARE_PATH) run NAMES=$(C_PROG)

wave: run
	@cd $(SIMULATOR_PATH) && gtkwave waveform.vcd

clean:
	@$(MAKE) -C $(SOFTWARE_PATH) clean
	@$(MAKE) -C $(SIMULATOR_PATH) clean
