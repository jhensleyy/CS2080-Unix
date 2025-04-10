FROM Ubuntu
RUN apt-get update
RUN apt-get install vim -y
RUN apt-get install nginx -y
WORKDIR /app
COPY app.sh
RUN chmod +x app.sh
EXPOSE 80
CMD ["./app.sh"]