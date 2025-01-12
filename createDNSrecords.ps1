Install-WindowsFeature  -name dns  -includeManagementTools
Add-DnsServerPrimaryZone -Name "accenture42.com" -ZoneFile "accenture42.com.dns"
add-DnsServerResourceRecord -zonename accenture42.com -A -name ns  -ipv4address 10.42.1.10
add-DnsServerResourceRecord -zonename accenture42.com -Cname -name www -hostname ns.accenture42.com
add-DnsServerResourceRecord -zonename accenture42.com -Cname -name imap -hostname ns.accenture42.com
add-DnsServerResourceRecord -zonename accenture42.com -Cname -name pop -hostname ns.accenture42.com
add-DnsServerResourceRecord -zonename accenture42.com -Cname -name smtp -hostname ns.accenture42.com
###FOR CISCO DEVICES DNS RECORDS;
add-DnsServerResourceRecord -zonename accenture42.com -A -name cb  -ipv4address 10.42.1.4
add-DnsServerResourceRecord -zonename accenture42.com -A -name ct  -ipv4address 10.42.1.2
add-DnsServerResourceRecord -zonename accenture42.com -A -name cm  -ipv4address 10.42.100.8
add-DnsServerResourceRecord -zonename accenture42.com -A -name ed  -ipv4address 10.42.42.1
add-DnsServerResourceRecord -zonename accenture42.com -A -name p1  -ipv4address 10.42.100.101
add-DnsServerResourceRecord -zonename accenture42.com -A -name p2  -ipv4address 10.42.100.102
add-DnsServerResourceRecord -zonename accenture42.com -A -name c1  -ipv4address 10.42.50.6
add-DnsServerResourceRecord -zonename accenture42.com -A -name c2  -ipv4address 10.42.50.8
add-DnsServerResourceRecord -zonename accenture42.com -A -name ap  -ipv4address 10.42.10.3