# xojowebapp
### Environment variables:  

  ENV MY_APP = name of executable (default name is "my_application")
  
### Volumes:

  /app - application folder
  
### Example:
 docker run -e MY_APP=start -v /path/to/folder/:/app pokys/xojowebapp
