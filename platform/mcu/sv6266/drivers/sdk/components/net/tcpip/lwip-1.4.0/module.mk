LIB_SRC := ./ports/icomm/sys_arch.c
LIB_SRC += ./src/api/api_msg.c
LIB_SRC += ./src/api/api_lib.c
LIB_SRC += ./src/api/err.c
LIB_SRC += ./src/api/netdb.c
LIB_SRC += ./src/api/tcpip.c
LIB_SRC += ./src/api/netifapi.c
LIB_SRC += ./src/api/netbuf.c
LIB_SRC += ./src/api/sockets.c
LIB_SRC += ./src/core/lwip_timers.c
LIB_SRC += ./src/core/tcp_in.c
LIB_SRC += ./src/core/tcp.c
LIB_SRC += ./src/core/lwip_init.c
LIB_SRC += ./src/core/dhcp.c
LIB_SRC += ./src/core/mem.c
LIB_SRC += ./src/core/memp.c
LIB_SRC += ./src/core/udp.c
LIB_SRC += ./src/core/stats.c
LIB_SRC += ./src/core/netif.c
LIB_SRC += ./src/core/def.c
LIB_SRC += ./src/core/sys.c
LIB_SRC += ./src/core/raw.c
LIB_SRC += ./src/core/lwip_pbuf.c
LIB_SRC += ./src/core/inet_chksum.c
LIB_SRC += ./src/core/dns.c
LIB_SRC += ./src/core/tcp_out.c
LIB_SRC += ./src/core/ipv4/igmp.c
LIB_SRC += ./src/core/ipv4/ip4.c
LIB_SRC += ./src/core/ipv4/autoip.c
LIB_SRC += ./src/core/ipv4/ip_frag.c
LIB_SRC += ./src/core/ipv4/ip4_addr.c
LIB_SRC += ./src/core/ipv4/icmp.c
LIB_SRC += ./src/core/ipv6/dhcp6.c
LIB_SRC += ./src/core/ipv6/ethip6.c
LIB_SRC += ./src/core/ipv6/ip6.c
LIB_SRC += ./src/core/ipv6/ip6_frag.c
LIB_SRC += ./src/core/ipv6/ip6_addr.c
LIB_SRC += ./src/core/ipv6/icmp6.c
LIB_SRC += ./src/core/ipv6/mld6.c
LIB_SRC += ./src/core/ipv6/nd6.c
LIB_SRC += ./src/core/snmp/asn1_enc.c
LIB_SRC += ./src/core/snmp/asn1_dec.c
LIB_SRC += ./src/core/snmp/mib2.c
LIB_SRC += ./src/core/snmp/mib_structs.c
LIB_SRC += ./src/core/snmp/msg_out.c
LIB_SRC += ./src/core/snmp/msg_in.c
LIB_SRC += ./src/netif/etharp.c
LIB_SRC += ./src/netif/ethernetif.c
LIB_ASRC :=
LIBRARY_NAME := lwip
LOCAL_CFLAGS += -Wno-address
LOCAL_AFLAGS +=
LOCAL_INC += -Icomponents/softmac
LOCAL_INC += -Icomponents/netstack_wrapper
LOCAL_INC += -Icomponents/inc
LOCAL_INC += -Icomponents/inc/bsp/$(CHIP_NAME)
LOCAL_INC += -Icomponents/inc/bsp
LOCAL_INC += -Icomponents/drv/$(CHIP_NAME)
LOCAL_INC += -I$(MYDIR)/ports/icomm/include
LOCAL_INC += -I$(MYDIR)/ports/icomm/include/arch
LOCAL_INC += -I$(MYDIR)/src/include
LOCAL_INC += -I$(MYDIR)/src/include/lwip
LOCAL_INC += -I$(MYDIR)/src/include/ipv4
LOCAL_INC += -I$(MYDIR)/src/include/ipv6
LOCAL_INC += -I$(MYDIR)/src/include/ipv6
LOCAL_INC += -I$(MYDIR)/src/include/ipv6

RELEASE_SRC := 2
$(eval $(call build-lib,$(LIBRARY_NAME),$(LIB_SRC),$(LIB_ASRC),$(LOCAL_CFLAGS),$(LOCAL_INC),$(LOCAL_AFLAGS),$(MYDIR)))