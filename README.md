# Wordpress 2.x.x @ php70-fpm & nginx
![docker](docker-wordpress.png)

+ Retrieve the docker login command that you can use to authenticate your Docker client to your registry:
`aws ecr get-login --region us-west-2`

+ Run the docker login command that was returned in the previous step.

+ Build your Docker image using the following command. For information on building a Docker file from scratch see the instructions here. You can skip this step if your image is already built:
`docker build -t docker-centos-webapp-wordpress .`

+ After the build completes, tag your image so you can push the image to this repository:
`docker tag docker-centos-webapp-wordpress:latest 722032845725.dkr.ecr.us-west-2.amazonaws.com/docker-centos-webapp-wordpress:latest`

+ Run the following command to push this image to your newly created AWS repository:
`docker push 722032845725.dkr.ecr.us-west-2.amazonaws.com/docker-centos-webapp-wordpress:latest`

# Download Magento Source into persistent volume
You should only have to do this once.