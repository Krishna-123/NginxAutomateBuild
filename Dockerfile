# 1st challenge for install the requirements
# FROM jupyter/minimal-notebook:latest
# COPY . /app
# WORKDIR /app
# RUN pip3 install -r requirements.txt
# EXPOSE 8888
# CMD jupyter-notebook

# FROM ubuntu:18.04
# RUN apt get install python3 pip3
# COPY ./ ./app/
# WORKDIR /app/
# RUN pip3 intall -r requirements.txt
# CMD ["jupyter-notebook"]


# 2nd install nginx and start the basic html
# FROM nginx
# COPY ./html/ /usr/share/nginx/html
# EXPOSE 80


# 3rd create own image of redis-server

# # define a base image
# FROM alpine 
# # define the programms need to install or dependencies
# RUN apk add --update redis
# # define the base command, to tell container what to do when it starts
# CMD [ "redis-server" ]

# 4th up the sample_node_app into docker

# # define base image
# FROM alpine
# RUN apk add --update nodejs npm
# COPY ./Sample_node_app/package.json ./Sample_node_app/
# WORKDIR ./Sample_node_app
# RUN npm install
# EXPOSE 3000
# COPY ./Sample_node_app/*.js ./
# CMD [ "npm","start" ]

#5 Automation with Nginx -- in a simplest way
FROM nginx
COPY ./NginxAutomation/index.html /usr/share/nginx/html/
EXPOSE 80
