FROM node:latest

# This is just metadata to get our package to appear in the repo
LABEL org.opencontainers.image.source https://github.com/guardian/tech-time-container-example

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



