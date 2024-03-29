# Packaging in Docker Compose

[![Actions Status](https://github.com/mafrarrix/devops-for-programmers-project-74/workflows/hexlet-check/badge.svg)](https://github.com/mafrarrix/devops-for-programmers-project-74/actions)

This project involves packaging the js-fastify-blog application into a Docker image. The application already adheres to the Twelve-Factor App methodology, minimizing differences between development and production environments.

Docker Compose is used to configure the development environment, run tests, and CI. Upon successful CI execution, the application image is built and published to hub.docker.com. This streamlines the setup and launch of the application within minutes, without requiring extensive instructions.

## Requirements

To run this project, you need to have the following software installed:

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)
- [Make](https://www.gnu.org/software/make/)

## Instructions

1. Clone this repository to your local machine.
2. Navigate to the project directory: `cd devops-for-programmers-project-74`.
3. Create a `.env` file with the required environment variables. You can use the provided `.env.example` as a template.
4. Install project dependencies by running the following command: `make install-dependencies`.
5. Build the containers using Docker Compose: `make build`
5. Build and start the containers using Docker Compose: `make compose-up`.
6. Access the application at `http://localhost:8080`.

## Makefile commands:

The Makefile provides convenient commands for preparing and running the project. Here are some examples:
- Run the project in development mode: `make compose-dev`
- Build and start the containers: `make compose-up`
- Stop and remove the containers: `make compose-down`
- Run tests: `make compose-test`

## Docker Image

The Docker image for this project is hosted on Docker Hub. You can pull the latest version using the following command:


docker pull mafrarrix/devops-for-programmers-project-74:latest


## License

This project is licensed under the MIT License.

[Screencast  del 28-11-2023 14:05:58.webm](https://github.com/mafrarrix/devops-for-programmers-project-74/assets/84633068/822d9e3e-5408-4eac-87ac-7ff8ab7f2883)
