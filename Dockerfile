FROM node:14

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 80



#This is a pth in my container which should be mapped to  folder outside  the container, where the data should be saved, so if we delete the container , we still can get access to the data saved in the computer 
CMD [ "node", "server.js" ]