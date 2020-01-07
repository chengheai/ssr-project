FROM node:10.11.0
RUN mkdir -p /app
COPY . /app
WORKDIR /app
RUN npm install
EXPOSE 3000
RUN npm run build
CMD ["npm", "start"]