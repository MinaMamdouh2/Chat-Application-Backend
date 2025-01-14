# chat-application
## Prerequisites
- Before you can run this app, you need to have the following installed on your system:
  - Docker
- Getting started
  - Clone this repository to your local machine: `git clone https://github.com/MinaMamdouh2/Chat-Application-Backend.git`
  - Navigate to the project directory: `cd Chat-Application-Backend`
- Running the app with Docker
  - Run the makefile command: `make docker-compose-up`

## Database Design
![DB design](https://github.com/MinaMamdouh2/Chat-Application-Backend/blob/main/db%20design.png)

## Engineering Decisions
- I employ vendoring as a practice to incorporate the code dependencies directly into my project. This approach enables me to have ready access to the source code of dependencies, facilitating bug detection and allowing seamless integration of additional APIs as needed. It is worth noting, however, that vendoring may present certain challenges, particularly when dealing with larger packages
- This software architecture comprises five distinct layers. The initial layer is the application layer, focusing on application-level concerns. The subsequent layer is the business layer, dedicated to packages associated with business rules and processing. The third layer, known as the foundation layer, is agnostic to specific business problems, designed for potential reusability, and can exist in independent repositories. The fourth layer is the vendor layer, housing code from third-party packages. Finally, the fifth layer, referred to as the zarf layer, is centered around deployments and deployment configuration, incorporating elements such as Docker, Kubernetes, and similar technologies.