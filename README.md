# src-sc-0102-ins-fe
# Incarichi-UI

The project was generated with Angular CLI version 7.3.1.

Prerequisites :
Node version 10 and above
Npm version 6 and above

## Development server

Run `npm install` to install all dependencies.

You may need to install additional dependencies manually:

  * `npm install node-sass`
  * `npm install @angular/compiler@7.2.5`
  * `npm install ajv@^6.9.1`
  
  
To install Talisman run the following,

curl --silent  https://raw.githubusercontent.com/thoughtworks/talisman/master/global_install_scripts/install.bash > /tmp/install_talisman.bash && /bin/bash /tmp/install_talisman.bash  

You will also need to make the `ng` command available to the command line with

    npm link @angular/cli

Run `npm run start` for a dev server. Navigate to `http://localhost:4200/`. The app will automatically reload if you change any of the source files.

If you have the backend and integration layer running, test the app by opening the url

    http://localhost:4200/damaged-party/005-I73-00-2018-000000012-1-351497058

## Build

Run `npm run build` to build the project. The build artifacts will be stored in the `dist/` directory. Use the `--prod` flag for a production build.

## Running unit tests

Run `npm run test` to execute the unit tests via [Karma](https://karma-runner.github.io).

## Running lint

Run `npm run lint` to execute lint for ts and scss

## Running end-to-end tests

Run `ng e2e` to execute the end-to-end tests via [Protractor](http://www.protractortest.org/).

## Code scaffolding

Run `ng generate component component-name` to generate a new component. You can also use `ng generate directive|pipe|service|class|guard|interface|enum|module`.

## Add local domain to /etc/hosts
127.0.0.1 generali.local

#Dockerized
>NOTE: We need Base images to run the test and build packages.
    Currently the code to build the base images are maintained in backend repository
    Path: /infra/docker/
##Usage   
    Run the test inside the docker, using script file: 
    ./scripts/run-tests.sh` 'lint'
    ./scripts/run-tests.sh` 'test'
    ./scripts/run-uitests.sh` 'uitest'
    
## 
    Run the test inside the docker, using docker command:
    docker build -t registry.dasrr.generali.it/e3gjeyab/node-ui --build-arg BUILD_COMMAND=uitest -f docker/Dockerfile.uitest .

## Build And Package the frontend service as docker image - incarichi-ui 
`./scripts/run-build-and-package.sh`

## Start frontend service using docker compose
####Change the tag for version
`TAG=1.0 docker-compose -f ./docker/docker-compose.yml up -d`

`TAG=1.0 docker-compose -f ./docker/docker-compose.yml down`


## Running karma tests from intellij IDEA
1. Install the karma plugin
2. Set the karma package in edit configurations as follows (replace PROJECT_LOCATION with your project location),
`{PROJECT_LOCATION}/node_modules/@angular/cli`

