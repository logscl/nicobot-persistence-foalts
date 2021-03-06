FROM node:12.13.1

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY app/* ./

RUN npm install -g @foal/cli
# If you are building your code for production
# RUN npm ci --only=production

#RUN npm run build:app

CMD ["npm", "run", "start"]