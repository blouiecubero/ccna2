Install-WindowsFeature  -name dns  -includeManagementTools
Add-DnsServerPrimaryZone -Name "ccna42.com" -ZoneFile "ccna42.com.dns"
add-DnsServerResourceRecord -zonename ccna42.com -A -name ns  -ipv4address 10.42.1.10
add-DnsServerResourceRecord -zonename ccna42.com -Cname -name www -hostname ns.ccna42.com
add-DnsServerResourceRecord -zonename ccna42.com -Cname -name imap -hostname ns.ccna42.com
add-DnsServerResourceRecord -zonename ccna42.com -Cname -name pop -hostname ns.ccna42.com
add-DnsServerResourceRecord -zonename ccna42.com -Cname -name smtp -hostname ns.ccna42.com
###FOR CISCO DEVICES DNS RECORDS;
add-DnsServerResourceRecord -zonename ccna42.com -A -name cb  -ipv4address 10.42.1.4
add-DnsServerResourceRecord -zonename ccna42.com -A -name ct  -ipv4address 10.42.1.2
add-DnsServerResourceRecord -zonename ccna42.com -A -name cm  -ipv4address 10.42.100.8
add-DnsServerResourceRecord -zonename ccna42.com -A -name ed  -ipv4address 10.42.42.1
add-DnsServerResourceRecord -zonename ccna42.com -A -name p1  -ipv4address 10.42.100.101
add-DnsServerResourceRecord -zonename ccna42.com -A -name p2  -ipv4address 10.42.100.102
add-DnsServerResourceRecord -zonename ccna42.com -A -name c1  -ipv4address 10.42.50.6
add-DnsServerResourceRecord -zonename ccna42.com -A -name c2  -ipv4address 10.42.50.8
add-DnsServerResourceRecord -zonename ccna42.com -A -name ap  -ipv4address 10.42.10.3