FROM node:10

# Create app directory inside the container for your app
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm install --only=production

# Copy the app source from current folder to the working directory defined above
COPY . .

# expose the port from docker that will map to your local machines port while running the container
EXPOSE 8080

# launch the app
CMD [ "npm", "start" ]
