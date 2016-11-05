from microsoft/windowsservercore

ENV mongo_version "3.2.6"
ENV mongo_url "http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-"
ENV mongo_ending "-signed.msi"

EXPOSE 27017

RUN powershell -Command (New-Object System.Net.Webclient).DownloadFile('%mongo_url%%mongo_version%%mongo_ending%', 'mongodb.msi')
RUN msiexec.exe /i mongodb.msi /q/n
RUN powershell -Command mkdir C:\data\; mkdir C:\data\db

CMD powershell -Command "& 'C:\Program Files\MongoDB\Server\3.2\bin\mongod.exe'"
