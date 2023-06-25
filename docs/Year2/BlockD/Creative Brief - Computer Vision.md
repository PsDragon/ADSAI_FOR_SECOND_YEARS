# Object Detection, Localization and Pose Prediction Application for Robotic Manipulation Creative Brief

## Overview

The objective of this project is to develop a Python package for an Object Detection, Localization and Pose Prediction application, specifically designed for robotic manipulation tasks. The package should be built based on the proof-of-concept (PoC) notebooks and scripts created in the block B. The application should be accessible through a command-line interface (CLI) and should also be deployable as an API using cloud services. 

## Goals

Create a system that can detect objects in a scene, localize them, and predict their pose:

- The system should be modular and should be robotic platform agnostic.
- The system should accept a video stream as input and should output the detected objects, their bounding boxes, their positions and their poses. 
- Information about the certainty of the predictions should also be provided.
- It should be possible to train the system on a local machine or on a cloud service.
- Inference should be performed on a video stream from a camera mounted on a robotic arm and the results should be displayed on a web interface and be accessible through an API. This allows the system to be deployed on any robotic platform regardless of the hardware specifications.
- Incorporate MLOps best practices for managing data environments, training, and deployment on Azure Machine Learning in order to ensure the system is scalable and maintainable.

## Technical Requirements

__Python Package__
- Combine the PoC notebooks and scripts into a single, cohesive Python package.
- Organise the package into modular components for easy maintenance and extensibility.
- Ensure the package adheres to Python best practices and follows PEP8 guidelines.
- Use logging to record the application's progress and output, and to provide useful information for debugging.
- Implement a user-friendly CLI for interacting with the application.
- Support basic functionality such as training, evaluation, and inference.
- Provide options for customization of input/output file paths, model parameters, and other relevant settings.
- Unit test the package to ensure its functionality and reliability.

__Documentation__
- Use docstrings and type hints to document the Python package.
- Create comprehensive documentation for the Python package, CLI, API, and MLOps processes.
- Include detailed instructions for installation, usage, and troubleshooting.
- Provide examples and sample code to demonstrate the application's functionality and MLOps best practices.
- Ideally the documentation should be hosted on a website using GitHub Pages.

__MLOps Best Practices__
- Set up data environments on Azure, ensuring proper data storage, versioning, and access control.
- Implement automated training pipelines with Azure Machine Learning, incorporating hyperparameter tuning and model evaluation.
- Integrate CI/CD practices for seamless deployment and updates of the application.
- Monitor the performance of the deployed models, implementing automated alerts and retraining when necessary.
- Maintain detailed logs of model experiments, training runs, and deployments.
- Implement a rollback strategy in case of unexpected errors or performance degradation.
- Allow for continuous model training and deployment using the latest data with minimal human intervention and sound deployment practices and strategies.

__API Deployment__
- Develop an API for deploying the application on Azure services.
- Ensure proper authentication and security measures are in place.
- Ideally methods for training, evaluation, and inference should be implemented within the API.
- Ideally the API should be accessible through a web interface and should also be callable from other applications.


__Testing and Validation__
- Test the application on a range of scenarios to ensure its accuracy, reliability and scalability.
- Validate the application's performance using relevant evaluation metrics.
- Ensure the application is robust to common errors and exceptions.

## Deliverables

- A modular Python package that can be installed using pip or whl file.
- A fully-functional CLI for interacting with the application.
- A web interface/API for interacting with the application.
- Comprehensive documentation, including installation and usage instructions, troubleshooting tips, and example code.

## Timeline

This project is expected to be completed within a 8-week period. Regular progress updates and milestone check-ins will be scheduled with the product owner.

