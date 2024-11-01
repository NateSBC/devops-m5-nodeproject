FROM node:latest
RUN npm install
COPY . .
EXPOSE 5000
ENTRYPOINT ["npm","start"]
