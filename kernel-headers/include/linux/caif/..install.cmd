cmd_usr/include/linux/caif/.install := /bin/bash /media/hiru/android/kernel/G7_ONE/LA.UM.8.4.1.r1-02900-8x98.0/scripts/headers_install.sh ./usr/include/linux/caif /media/hiru/android/kernel/G7_ONE/LA.UM.8.4.1.r1-02900-8x98.0/include/uapi/linux/caif if_caif.h caif_socket.h; /bin/bash /media/hiru/android/kernel/G7_ONE/LA.UM.8.4.1.r1-02900-8x98.0/scripts/headers_install.sh ./usr/include/linux/caif ./include/generated/uapi/linux/caif ; for F in ; do echo "$(pound)include <asm-generic/$$F>" > ./usr/include/linux/caif/$$F; done; touch usr/include/linux/caif/.install