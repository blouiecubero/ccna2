config t
vlan 25
 name accenture.com
 exit
Int vlan 25
 no shut
 ip add 10.0.8.1 255.255.248.0
ip dhcp excluded-add 10.0.8.1 10.0.8.100
ip dhcp pool accenture.com
 network 10.0.8.0 255.255.248.0
 default-router 10.0.8.1
 domain-name accenture.com
 dns-server 10.42.1.10
 option 150 ip 10.42.100.8
 Int Fa 0/7
  swi Voice vlan 25
  do sh ip dhcp binding

Ex.5.3: Compute and Configure SYKESASIA.com
call center with 388 Agents,Tls,QAs,Pm. using
10.0.0.0/8:
Convert: 388 is 9 bits
Subract: /32 - /9 = /23 is 3rd,2i
Ipasok: "ipasok 2i sa 3rd"
Sykesasia: 10.0.2.0/23


config t
vlan 25
 name concentrix.com
 exit
Int vlan 25
 no shut
 ip add 10.0.16.1 255.255.240.0
ip dhcp excluded-add 10.0.16.1 10.0.16.100
ip dhcp pool concentrix.com
 network 10.0.16.0 255.255.240.0
 default-router 10.0.16.1
 domain-name concentrix.com
 dns-server 10.42.1.10
 option 150 ip 10.42.100.8
 Int Fa 0/5
  swi Voice vlan 25
  do sh ip dhcp binding


config t
vlan 25
 name smart.com.ph
 exit
Int vlan 25
 no shut
 ip add 10.1.0.1 255.255.0.0
ip dhcp excluded-add 10.1.0.1 10.0.1.100
ip dhcp pool smart.com.ph
 network 10.1.0.0 255.255.0.0
 default-router 10.1.0.1
 domain-name smart.com.ph
 dns-server 10.42.1.10
 option 150 ip 10.42.100.8
 Int Fa 0/5
  swi Voice vlan 25
  do sh ip dhcp binding


pnp.com.ph 200 call center

/32 - /8 = /14 (3rd octet, 1i)

10.0.1.0/24

F : 10.0.1.1
L : 10.0.1.254
Broadcast: 10.0.1.255
not: 10.0.2.0


config t
vlan 25
 name bdo.com
 exit
Int vlan 25
 no shut
 ip add 10.0.0.17 255.255.255.240
ip dhcp excluded-add 10.0.0.17 10.0.0.18
ip dhcp pool bdo.com
 network 10.0.0.16 255.255.255.240
 default-router 10.0.0.17
 domain-name bdo.com
 dns-server 10.42.1.10
 option 150 ip 10.42.100.8
 Int Fa 0/7
  swi Voice vlan 25
  do sh ip dhcp binding
