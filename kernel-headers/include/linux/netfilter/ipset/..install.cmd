cmd_usr/include/linux/netfilter/ipset/.install := /bin/bash /media/hiru/android/kernel/G7_ONE/LA.UM.8.4.1.r1-02900-8x98.0/scripts/headers_install.sh ./usr/include/linux/netfilter/ipset /media/hiru/android/kernel/G7_ONE/LA.UM.8.4.1.r1-02900-8x98.0/include/uapi/linux/netfilter/ipset ip_set.h ip_set_list.h ip_set_hash.h ip_set_bitmap.h; /bin/bash /media/hiru/android/kernel/G7_ONE/LA.UM.8.4.1.r1-02900-8x98.0/scripts/headers_install.sh ./usr/include/linux/netfilter/ipset ./include/generated/uapi/linux/netfilter/ipset ; for F in ; do echo "$(pound)include <asm-generic/$$F>" > ./usr/include/linux/netfilter/ipset/$$F; done; touch usr/include/linux/netfilter/ipset/.install