FROM node:10.11.0
WORKDIR /opt
# RUN npm install
# RUN npm run build
ADD node_modules /opt/node_modules
ADD .nuxt /opt/.nuxt
ADD static /opt/static
ADD nuxt.config.js /opt
ADD package.json /opt
EXPOSE 3000
CMD ["npm", "run", "start"]
