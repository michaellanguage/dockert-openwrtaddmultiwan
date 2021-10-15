config globals globals
    option 'ula_prefix' 'auto'

config 'interface'    'loopback'
    option 'ifname'   'lo'
    option 'proto'    'static'
    option 'ipaddr'   '127.0.0.1'
    option 'netmask'  '255.0.0.0'
 
config 'interface'    'lan'
    option 'type'     'bridge'
    option 'ifname'   'eth0'
    option 'proto'    'static'
    option 'ipaddr'   "${LAN_ADDR}"
    option 'gateway'  "${LAN_GW}"
    option 'netmask'  "${LAN_NETMASK}"
    option 'ip6assign' 64

config 'interface'    'wan1'
    option 'ifname'   'eth1'
    option 'proto'    'dhcp'


config interface 'wan2'
        option ifname 'wan4'
        option proto 'static'
        option broadcast '192.168.16.255'
        option ipaddr '192.168.16.100'
        option gateway '192.168.16.1'
        option metric '20'
        list dns '8.8.8.8'
        list dns '8.8.4.4'
        option netmask '255.255.255.0'

config interface 'tun0'
        option ifname 'tun0'
        option proto 'none'
        