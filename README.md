# My Web Application 

This repository contains a basic web application that has been Dockerized using Nginx and Docker Compose.

# Prerequisites

Before running the application, make sure you have the following installed on your machine:

- Docker 
- Docker Compose

## Getting Started 

Follow the steps below to build and run the application:

1. Clone this repository:

git clone <repository-url>

2. Navigate to the project directory:

cd webapp-docker

3. Create the HTML file:

- Open a text editor:

```
vim index.html
```

- In the editor, write the HTML code for your web page.
- Save and close the `index.html` file.

4. Create the Dockerfile:

- Open a text editor:
```
vim Dockerfile
```
- add the following content to the `Dockerfile`:
```
# Use an official Nginx base image
FROM nginx

# Copy the application files to the web root directory 
COPY index.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80
```

- Save and close the `Dockerfile`.

5. Create the docker-compose.yml file:
- Open a text editor:
```
vim docker-compose.ml
```
- Add the following content to the `docker-compose.yml` file:
```
version: '3'
services:
	web:
		build:
			context: .
			dockerfile: Dockerfile
		ports:
			- '8080:80'

```
- Save and close the 'docker-compose.yml' file

6. Build and run the Docker container:
- Build the Docker image:
```
docker-compose build
```
- Run the container:
```
docker-compose up
```

7. Open a web browser and visit http://localhost:8080 to see your web application.

## Customization 

If you want to customize the Nginx configuration or add additional functionality to the application, you can modify the `Dockerfile` and `docker-compose.yml` files as needed.

## Troubleshooting

- If you encounter any issues or errors, please refer to the official Docker and Docker Compose documentation for troubleshooting steps.










