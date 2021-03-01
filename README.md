# Objective
The aim is to build a docker image that can allow easy integration between Julia and NodeJS.


## Get the image

### Option 1. Access the public image
This is intended to be an open docker image to encourage use of julia by using nodejs as an integrator

the latest image can be access from ```docker pull cognitiveearthdocker/julia-nodejs```


### Option 2. Build the image from github source
After cloning this repository build the image by running this command in the project directory (that contains the Dockerfile) include the fullstop at the end of the line.

```docker build --tag julia-nodejs:latest .```


## Run the image as a container
To run the container in the above examples would require the following 

if using the locally built image...

```
docker run --rm -it \
    --name=julia-nodejs \
    julia-nodejs:latest \
    bin\bash
```

if using the docker repository image...
```
docker run --rm -it \
    --name=julia-nodejs \
    cognitiveearthdocker/julia-nodejs:latest \
    bin\bash
```

This should then give a command prompt inside the container that can be used to execute Julia or nodejs.

To execute julia in REPL environment, simply type ```julia```

To execute nodejs in REPL environment, simply type ```nodejs```

