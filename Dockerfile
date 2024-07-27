FROM kalilinux/kali-rolling:latest

RUN apt update

RUN apt upgrade -y

RUN apt dist-upgrade -y

RUN apt install locate -y

RUN apt install wget -y

RUN apt install git -y

RUN apt install vim -y

RUN apt install nano -y

RUN apt install golang -y

RUN apt install python3 -y

RUN apt install python3-pip -y

RUN pip3 install uuid

RUN  go env -w GO111MODULE=auto

RUN apt install python3-ldapdomaindump -y

RUN apt install dnsutils -y

RUN apt install gobuster -y

RUN apt install ffuf -y

RUN apt install seclists -y

RUN apt install net-tools -y

RUN apt install bind9 -y

RUN apt install whois -y

RUN apt install netexec -y

RUN apt install smbmap -y

RUN apt install smbclient -y

RUN apt install nmap -y

RUN apt install fping -y

RUN apt install nikto -y

RUN apt install hydra -y

RUN apt install onesixtyone -y

RUN apt install snmp -y

RUN apt install python3-impacket -y

RUN git clone https://github.com/dirkjanm/adidnsdump
RUN cd adidnsdump && pip3 install adidnsdump

RUN go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
RUN mv /root/go/bin/httpx /usr/bin/

RUN go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest
RUN mv /root/go/bin/nuclei /usr/bin/
RUN nuclei -update-templates
