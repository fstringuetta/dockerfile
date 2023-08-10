FROM kalilinux/kali-rolling:latest

RUN apt-get update

RUN apt-get upgrade -y

RUN apt-get dist-upgrade -y

RUN apt-get install locate -y

RUN apt-get install wget -y

RUN apt-get install git -y

RUN apt-get install vim -y

RUN apt-get install golang -y

RUN apt-get install python3 -y

RUN apt-get install python3-pip -y

RUN pip3 install uuid

RUN  go env -w GO111MODULE=auto

RUN apt-get install python3-ldapdomaindump -y

RUN apt-get install gobuster -y

RUN apt-get install ffuf -y

RUN apt-get install seclists -y

RUN apt-get install net-tools -y

RUN apt-get install bind9 -y

RUN apt-get install whois -y

RUN apt-get install crackmapexec -y

RUN apt-get install smbmap -y

RUN apt-get install smbclient -y

RUN apt-get install nmap -y

RUN apt-get install fping -y

RUN apt-get install nikto -y

RUN apt-get install hydra -y

RUN apt-get install onesixtyone -y

RUN apt-get install snmp -y

RUN apt-get install python3-impacket -y

RUN git clone https://github.com/dirkjanm/adidnsdump
RUN cd adidnsdump && pip3 install adidnsdump

RUN go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
RUN mv /root/go/bin/httpx /usr/bin/

RUN go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest
RUN mv /root/go/bin/nuclei /usr/bin/
RUN nuclei -update-templates


