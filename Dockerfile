#use official image of nginx
FROM nginx:alpine

#remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

#copy your website to nginx's public folder
COPY . /usr/share/nginx/html

#expose port 80
EXPOSE 80
