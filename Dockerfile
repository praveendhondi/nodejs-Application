FROM node
MAINTAINER nodejs
WORKDIR /usr/src/app
RUN npm install
COPY ' '
EXPOSE 3000
CMD ["nodejs"]

Docker build -t imagename v1
