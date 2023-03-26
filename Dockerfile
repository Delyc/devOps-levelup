FROM node:alpine

#working Dir
WORKDIR /app

#Copy package Json files
COPY package*.json ./

#install files
RUN npm ci

#Copy source files
COPY . .



# expose the api port


CMD ["npm" , "run", "dev"]
