# 161Check
This is a simple script written out of necessity to perform a quick and dirty check against devices on a network to determine if SNMP connections via default community string are successful

The script takes a file containing target IP addresses and passes it through snmp-check. The result is grepped for "Timeoue" which will indicate a failed connection with the default community string.
