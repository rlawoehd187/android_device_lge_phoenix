cmd_usr/include/linux/usb/.install := /bin/bash /media/hiru/android/kernel/G7_ONE/LA.UM.8.4.1.r1-02900-8x98.0/scripts/headers_install.sh ./usr/include/linux/usb /media/hiru/android/kernel/G7_ONE/LA.UM.8.4.1.r1-02900-8x98.0/include/uapi/linux/usb g_printer.h functionfs.h ch9.h audio.h tmc.h video.h usb_ctrl_qti.h cdc.h cdc-wdm.h gadgetfs.h ch11.h midi.h; /bin/bash /media/hiru/android/kernel/G7_ONE/LA.UM.8.4.1.r1-02900-8x98.0/scripts/headers_install.sh ./usr/include/linux/usb ./include/generated/uapi/linux/usb ; for F in ; do echo "$(pound)include <asm-generic/$$F>" > ./usr/include/linux/usb/$$F; done; touch usr/include/linux/usb/.install
