FROM node:latest

# Create a directory for our application
WORKDIR /opt/example/

# copy in the example application
COPY app .

# make sure all the dependencies are present
RUN npm i

# timestamp the build
RUN date > build-time.txt

# Set our greeting
ENV GREETING="Hello World!"

# Run node...
ENTRYPOINT ["node"]

# against index.js
CMD ["index.js"]



