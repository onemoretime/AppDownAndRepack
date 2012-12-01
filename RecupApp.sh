#!/bin/bash

#/bin/wget --no-cookies --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F" "http://www.oracle.com/technetwork/java/javasebusiness/downloads/java-archive-downloads-javase6-419409.html" -O ./liste_archive.txt

#URL win32
cat liste_archive.txt |grep "download.oracle.com\/otn\/java"|grep windows\-i586\.exe|cut -d, -f 3|cut -d\" -f4|grep jre\-6 > ./urlJavaWin32.txt
cat liste_archive.txt |grep "download.oracle.com\/otn\/java"|grep windows\-i586-p\.exe|cut -d, -f 3|cut -d\" -f4|grep jre\-6 >> ./urlJavaWin32.txt

#URL Win64
cat liste_archive.txt |grep "download.oracle.com\/otn\/java"|grep windows\-amd64\.exe|cut -d, -f 3|cut -d\" -f4|grep jre\-6 > ./urlJavaWin64.txt
cat liste_archive.txt |grep "download.oracle.com\/otn\/java"|grep windows\-x64\.exe|cut -d, -f 3|cut -d\" -f4|grep jre\-6 >> ./urlJavaWin64.txt

#URL Linux32
cat liste_archive.txt |grep "download.oracle.com\/otn\/java"|grep linux\-i586\.bin|cut -d, -f 3|cut -d\" -f4|grep jre\-6 > ./urlJavaLinux32.txt

#URL Linux64
cat liste_archive.txt |grep "download.oracle.com\/otn\/java"|grep linux\-amd64\.bin|cut -d, -f 3|cut -d\" -f4|grep jre\-6 > ./urlJavaLinux64.txt
cat liste_archive.txt |grep "download.oracle.com\/otn\/java"|grep linux\-x64\.bin|cut -d, -f 3|cut -d\" -f4|grep jre\-6 >> ./urlJavaLinux64.txt
