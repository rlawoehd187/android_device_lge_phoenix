cmd_usr/include/linux/nfsd/.install := /bin/bash /media/hiru/android/kernel/G7_ONE/LA.UM.8.4.1.r1-02900-8x98.0/scripts/headers_install.sh ./usr/include/linux/nfsd /media/hiru/android/kernel/G7_ONE/LA.UM.8.4.1.r1-02900-8x98.0/include/uapi/linux/nfsd nfsfh.h debug.h stats.h cld.h export.h; /bin/bash /media/hiru/android/kernel/G7_ONE/LA.UM.8.4.1.r1-02900-8x98.0/scripts/headers_install.sh ./usr/include/linux/nfsd ./include/generated/uapi/linux/nfsd ; for F in ; do echo "$(pound)include <asm-generic/$$F>" > ./usr/include/linux/nfsd/$$F; done; touch usr/include/linux/nfsd/.install
