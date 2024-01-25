default: VSimTop
include VSimTop.mk
CXXFLAGS += -MMD -O3 -std=c++14 -fno-exceptions -fPIE -Wno-unused-result
# -DDEVICE can add here
CXXFLAGS += $(shell llvm-config-11 --cxxflags) -fPIC -DDUMP_WAVE
LDFLAGS += -O3 -rdynamic -shared -fPIC
LIBS += $(shell llvm-config-11 --libs)
LIBS += -lreadline -ldl -pie -lSDL2
LINK := g++