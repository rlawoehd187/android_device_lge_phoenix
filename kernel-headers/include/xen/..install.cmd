cmd_usr/include/xen/.install := /bin/bash /media/hiru/android/kernel/G7_ONE/LA.UM.8.4.1.r1-02900-8x98.0/scripts/headers_install.sh ./usr/include/xen /media/hiru/android/kernel/G7_ONE/LA.UM.8.4.1.r1-02900-8x98.0/include/uapi/xen privcmd.h gntalloc.h gntdev.h evtchn.h; /bin/bash /media/hiru/android/kernel/G7_ONE/LA.UM.8.4.1.r1-02900-8x98.0/scripts/headers_install.sh ./usr/include/xen ./include/generated/uapi/xen ; for F in ; do echo "$(pound)include <asm-generic/$$F>" > ./usr/include/xen/$$F; done; touch usr/include/xen/.install
