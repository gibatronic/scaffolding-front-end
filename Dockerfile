FROM node:5
ENV NODE_ENV=development
WORKDIR /usr/local/src
COPY . /usr/local/src
RUN ["npm", "install"]
EXPOSE 3000
CMD ["make", "run"]
