# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := run-benchmarks
DEFS_Debug := '-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-D_GNU_SOURCE' \
	'-DEIO_STACKSIZE=262144' \
	'-DDEBUG' \
	'-D_DEBUG' \
	'-DEV_VERIFY=2'

# Flags passed to all source files.
CFLAGS_Debug := \
	-Wall \
	-ansi \
	-fvisibility=hidden \
	-g \
	-O0

# Flags passed to only C files.
CFLAGS_C_Debug := 

# Flags passed to only C++ files.
CFLAGS_CC_Debug := -fno-rtti \
	-fno-exceptions

INCS_Debug := -I$(srcdir)/src/libuv/include

DEFS_Release := '-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-D_GNU_SOURCE' \
	'-DEIO_STACKSIZE=262144' \
	'-DNDEBUG'

# Flags passed to all source files.
CFLAGS_Release :=  \
	-Wall \
	-ansi \
	-fvisibility=hidden \
	-O3 \
	-fomit-frame-pointer \
	-fdata-sections \
	-ffunction-sections

# Flags passed to only C files.
CFLAGS_C_Release := 

# Flags passed to only C++ files.
CFLAGS_CC_Release := -fno-rtti \
	-fno-exceptions

INCS_Release := -I$(srcdir)/src/libuv/include

OBJS := $(obj).target/$(TARGET)/src/libuv/test/benchmark-ares.o \
	$(obj).target/$(TARGET)/src/libuv/test/benchmark-getaddrinfo.o \
	$(obj).target/$(TARGET)/src/libuv/test/benchmark-ping-pongs.o \
	$(obj).target/$(TARGET)/src/libuv/test/benchmark-pound.o \
	$(obj).target/$(TARGET)/src/libuv/test/benchmark-pump.o \
	$(obj).target/$(TARGET)/src/libuv/test/benchmark-sizes.o \
	$(obj).target/$(TARGET)/src/libuv/test/benchmark-spawn.o \
	$(obj).target/$(TARGET)/src/libuv/test/benchmark-thread.o \
	$(obj).target/$(TARGET)/src/libuv/test/benchmark-tcp-write-batch.o \
	$(obj).target/$(TARGET)/src/libuv/test/benchmark-udp-packet-storm.o \
	$(obj).target/$(TARGET)/src/libuv/test/dns-server.o \
	$(obj).target/$(TARGET)/src/libuv/test/echo-server.o \
	$(obj).target/$(TARGET)/src/libuv/test/blackhole-server.o \
	$(obj).target/$(TARGET)/src/libuv/test/run-benchmarks.o \
	$(obj).target/$(TARGET)/src/libuv/test/runner.o \
	$(obj).target/$(TARGET)/src/libuv/test/runner-unix.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# Make sure our dependencies are built before any of us.
$(OBJS): | $(obj).target/src/libuv/libuv.a

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

# End of this set of suffix rules
### Rules for final target.

$(builddir)/run-benchmarks: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(builddir)/run-benchmarks: LIBS := $(LIBS)
$(builddir)/run-benchmarks: LD_INPUTS := $(OBJS) $(obj).target/src/libuv/libuv.a
$(builddir)/run-benchmarks: TOOLSET := $(TOOLSET)
$(builddir)/run-benchmarks: $(OBJS) $(obj).target/src/libuv/libuv.a FORCE_DO_CMD
	$(call do_cmd,link)

all_deps += $(builddir)/run-benchmarks
# Add target alias
.PHONY: run-benchmarks
run-benchmarks: $(builddir)/run-benchmarks

# Add executable to "all" target.
.PHONY: all
all: $(builddir)/run-benchmarks

