FROM node:22.11.0-alpine3.20
WORKDIR /app
COPY package*.json .
RUN npm install
COPY . .
# being overrided so pass it as a default command line
CMD ["npm","run","dev"] 
# run this command line no matter what
# ENTRYPOINT ["npm","run","dev"] 
