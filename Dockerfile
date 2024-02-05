# Use an official Node runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the app source code to the working directory
COPY . .

# Expose port 7775
EXPOSE 7775

# Define environment variable
ENV REACT_APP_API_URL=http://localhost:7775

# Build the app
RUN npm run build

# Set up the production environment
CMD ["npm", "start"]

# Set up the production environment
CMD ["npm", "run", "build"]
RUN mkdir /kaur_mehakdeep_site
RUN mv build/* /kaur_mehakdeep_site

CMD ["npm", "start"]
