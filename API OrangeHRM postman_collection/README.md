<h1 align="center">OrangeHRM API Collection</h1>

<p align="center">Postman collection used for API testing in the Final Project</p>

---

This folder contains the Postman collection I created for API testing on the OrangeHRM demo application. I used it in my final project for the ITF Manual Testing course.

The full description of the API testing (access token, requests, test scripts and API checklist) is available in the Final Project documentation: [Final Project – 8.3 API Testing](../Final%20Project/README.md#83-api-testing).

## What the collection contains

| Folder / Request | Description |
|---|---|
| GET AccessToken | Gets the access token and saves it in the `auth_token` environment variable |
| Time-Employee | GET, POST and PUT requests for the Employee API |
| Time-Customer | GET, POST, PUT and DELETE requests for customers, including a test script for the 404 "Customer Not Found" response |
| Time-Project | GET, POST, PUT and DELETE requests for projects |
| Time-Activities | GET, POST, PUT and DELETE requests for activities |

## Project Files

| File | Description |
|---|---|
| [Orange HRM API Collection.postman_collection.json](Orange%20HRM%20API%20Collection.postman_collection.json) | Postman collection (can be imported into Postman) |
