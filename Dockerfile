#Use a lightweight web server image as the base image
FROM nginx:alpine
#COpy the project files into the container's web root directory
COPY ./ /usr/share/nginx/html
#Expose port 80 to allow external access
EXPOSE 80
#Start the web server
CMD ["nginx","-g","daemon off;"]
