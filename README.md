# mongodb-windows
An simple MongoDB image for Docker on Windows

### Contents

[About this image](#about-this-image)<br/>
[Run this image](#run-this-image)<br/>
[Image details](#image-details)<br/>

<a name=about-this-image></a>
## About this image

1. **Applies to:** Windows Server 2016/Windows 10
5. **Author:** Serge Kalinin <kalininsn@gmail.com>

<a name=run-this-image></a>

## Run This Image

To run this image exec following command:

```` 
docker run -d --name mongodb -p 27017:27017 sergek/mongodb-windows
```` 

<a name=image-details></a>

## Image details

The Dockerfile downloads and installs MongoDB version 3.2.6. Also there are some parameters that should be reviewed:
- Port: 27017
- Database Directory: C:\data\db
