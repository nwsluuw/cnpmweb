FROM node:20

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY . .

RUN npm install  --registry=http://registry.npmmirror.com/  --legacy-peer-deps


CMD ["npm", "run", "dev"]
