FROM node:14
WORKDIR /app
COPY package*.json /app
RUN npm install
COPY . .
RUN npm run build
EXPOSE  5004
CMD ["npm", "start"]
