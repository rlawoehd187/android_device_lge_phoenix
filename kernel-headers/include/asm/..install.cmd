cmd_usr/include/asm/.install := /bin/bash /media/hiru/android/kernel/G7_ONE/LA.UM.8.4.1.r1-02900-8x98.0/scripts/headers_install.sh ./usr/include/asm /media/hiru/android/kernel/G7_ONE/LA.UM.8.4.1.r1-02900-8x98.0/arch/arm64/include/uapi/asm fcntl.h posix_types.h ucontext.h perf_regs.h byteorder.h stat.h hwcap.h signal.h auxvec.h statfs.h siginfo.h param.h kvm.h unistd.h bitsperlong.h setup.h ptrace.h sigcontext.h; /bin/bash /media/hiru/android/kernel/G7_ONE/LA.UM.8.4.1.r1-02900-8x98.0/scripts/headers_install.sh ./usr/include/asm ./arch/arm64/include/generated/uapi/asm kvm_para.h; for F in kvm_para.h errno.h ioctl.h ioctls.h ipcbuf.h kvm_para.h mman.h msgbuf.h poll.h resource.h sembuf.h shmbuf.h socket.h sockios.h swab.h termbits.h termios.h types.h; do echo "$(pound)include <asm-generic/$$F>" > ./usr/include/asm/$$F; done; touch usr/include/asm/.install
