# Docker build command : 
docker build -t cronjob_backup .
# Docker run command : 
docker run -p 4001:4001 -v {local host path(absolute path)}:/github_backups {image name}
<p/>
This run command will save the zip files to localhost path that needs to be created by the user

# If using docker for desktop:
1. Build the image using the same run command
2. While creating the instance specify in optional settings Port as 4001 ; Volumes : localhost: {choose} ; container : /github_backups
3. Files will be saved locally on the localhost location specified if both paths are provided , by default files will be saved to container storage
