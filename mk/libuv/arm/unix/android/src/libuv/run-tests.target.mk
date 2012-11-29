# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := run-tests
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

OBJS := $(obj).target/$(TARGET)/src/libuv/test/blackhole-server.o \
	$(obj).target/$(TARGET)/src/libuv/test/echo-server.o \
	$(obj).target/$(TARGET)/src/libuv/test/run-tests.o \
	$(obj).target/$(TARGET)/src/libuv/test/runner.o \
	$(obj).target/$(TARGET)/src/libuv/test/test-get-loadavg.o \
	$(obj).target/$(TARGET)/src/libuv/test/test-util.o \
	$(obj).target/$(TARGET)/src/libuv/test/test-async.o \
	$(obj).target/$(TARGET)/src/libuv/test/test-error.o \
	$(obj).target/$(TARGET)/src/libuv/test/test-callback-stack.o \
	$(obj).target/$(TARGET)/src/libuv/test/test-connection-fail.o \
	$(obj).target/$(TARGET)/src/libuv/test/test-cwd-and-chdir.o \
	$(obj).target/$(TARGET)/src/libuv/test/test-delayed-accept.o \
	$(obj).target/$(TARGET)/src/libuv/test/test-eio-overflow.o \
	$(obj).target/$(TARGET)/src/libuv/test/test-fail-always.o \
	$(obj).target/$(TARGET)/src/libuv/test/test-fs.o \
	$(obj).target/$(TARGET)/src/libuv/test/test-fs-event.o \
	$(obj).target/$(TARGET)/src/libuv/test/test-get-currentexe.o \
	$(obj).target/$(TARGET)/src/libuv/test/test-get-memory.o \
	$(obj).target/$(TARGET)/src/libuv/test/test-getaddrinfo.o \
	$(obj).target/$(TARGET)/src/libuv/test/test-gethostbyname.o \
	$(obj).target/$(TARGET)/src/libuv/test/test-getsockname.o \
	$(obj).target/$(TARGET)/src/libuv/test/test-hrtime.o \
	$(obj).target/$(TARGET)/src/libuv/test/test-idle.o \
	$(obj).target/$(TARGET)/src/libuv/test/test-ipc.o \
	$(obj).target/$(TARGET)/src/libuv/test/test-ipc-threads.o \
	$(obj).target/$(TARGET)/src/libuv/test/test-loop-handles.o \
	$(obj).target/$(TARGET)/src/libuv/test/test-multiple-listen.o \
	$(obj).target/$(TARGET)/src/libuv/test/test-pass-always.o \
	$(obj).target/$(TARGET)/src/libuv/test/test-ping-pong.o \
	$(obj).target/$(TARGET)/src/libuv/test/test-pipe-bind-error.o \
	$(obj).target/$(TARGET)/src/libuv/test/test-pipe-connect-error.o \
	$(obj).target/$(TARGET)/src/libuv/test/test-platform-output.o \
	$(obj).target/$(TARGET)/src/libuv/test/test-process-title.o \
	$(obj).target/$(TARGET)/src/libuv/test/test-ref.o \
	$(obj).target/$(TARGET)/src/libuv/test/test-shutdown-eof.o \
	$(obj).target/$(TARGET)/src/libuv/test/test-spawn.o \
	$(obj).target/$(TARGET)/src/libuv/test/test-stdio-over-pipes.o \
	$(obj).target/$(TARGET)/src/libuv/test/test-tcp-bind-error.o \
	$(obj).target/$(TARGET)/src/libuv/test/test-tcp-bind6-error.o \
	$(obj).target/$(TARGET)/src/libuv/test/test-tcp-close.o \
	$(obj).target/$(TARGET)/src/libuv/test/test-tcp-flags.o \
	$(obj).target/$(TARGET)/src/libuv/test/test-tcp-connect-error.o \
	$(obj).target/$(TARGET)/src/libuv/test/test-tcp-connect6-error.o \
	$(obj).target/$(TARGET)/src/libuv/test/test-tcp-write-error.o \
	$(obj).target/$(TARGET)/src/libuv/test/test-tcp-write-to-half-open-connection.o \
	$(obj).target/$(TARGET)/src/libuv/test/test-tcp-writealot.o \
	$(obj).target/$(TARGET)/src/libuv/test/test-threadpool.o \
	$(obj).target/$(TARGET)/src/libuv/test/test-mutexes.o \
	$(obj).target/$(TARGET)/src/libuv/test/test-thread.o \
	$(obj).target/$(TARGET)/src/libuv/test/test-timer-again.o \
	$(obj).target/$(TARGET)/src/libuv/test/test-timer.o \
	$(obj).target/$(TARGET)/src/libuv/test/test-tty.o \
	$(obj).target/$(TARGET)/src/libuv/test/test-udp-dgram-too-big.o \
	$(obj).target/$(TARGET)/src/libuv/test/test-udp-ipv6.o \
	$(obj).target/$(TARGET)/src/libuv/test/test-udp-options.o \
	$(obj).target/$(TARGET)/src/libuv/test/test-udp-send-and-recv.o \
	$(obj).target/$(TARGET)/src/libuv/test/test-udp-multicast-join.o \
	$(obj).target/$(TARGET)/src/libuv/test/test-counters-init.o \
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

$(builddir)/run-tests: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(builddir)/run-tests: LIBS := $(LIBS)
$(builddir)/run-tests: LD_INPUTS := $(OBJS) $(obj).target/src/libuv/libuv.a
$(builddir)/run-tests: TOOLSET := $(TOOLSET)
$(builddir)/run-tests: $(OBJS) $(obj).target/src/libuv/libuv.a FORCE_DO_CMD
	$(call do_cmd,link)

all_deps += $(builddir)/run-tests
# Add target alias
.PHONY: run-tests
run-tests: $(builddir)/run-tests

# Add executable to "all" target.
.PHONY: all
all: $(builddir)/run-tests

