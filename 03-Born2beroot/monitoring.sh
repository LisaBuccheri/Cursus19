wall "
#Architecture: $(uname -a)
#CPU physical: $(nproc --all)
#vCPU: $(cat /proc/cpuinfo | grep processor | wc -l)
#Memory Usage: $(free -m | grep Mem | awk '{printf "%d/%dMB (%.2f%%)", $3, $2, $3/$2*100}>
#Disk Usage: $(df -h -BM --total | grep total |awk '{printf "%d/%dGB (%.2f%%) \n", $3, $2>
#CPU Load: $(top -bn1 | grep %Cpu | awk '{printf "%d%%", $2 + $4}')
#Last boot: $(who -b | awk '{printf "%s %s", $3, $4}')
#LVM use: $(if [ $(lsblk | grep LVM | wc -l) -gt 0 ]
then
        echo "yes"
        else
        echo "no "
        fi)
#Connections TCP: $(ss | grep tcp | wc -l) ESTABLISHED
#User log: $(who | wc -l)
#Network: IP $(hostname -I) $(ip address | grep ether | awk '{printf "(%s)", $2}')
#Sudo: $(journalctl | grep "COMMAND" | wc -l) cmd
"
