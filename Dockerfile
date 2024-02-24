FROM kalilinux/kali-rolling:latest

RUN apt update
RUN apt install nmap -y
RUN apt install dirsearch -y
