# Serverless REST API

REST API deployed in AWS using services such as Lambda, API Gateway, DynamoDB, configured with XRay traces and CloudWatch log groups for resource monitoring, it has 30 different resources, all deployed in AWS and configured in Terraform.

The API is built with Node.js and is an API for task control, in which records can be consulted, added, modified and deleted through HTTP queries.

![Serverless](https://4sysops.com/wp-content/uploads/2022/03/Serverless-computing-with-AWS-Lambda.png)

## 🚀 Quick reference

•	Maintained by: Byron Murillo

•	Where go to get help: https://github.com/vairome/rest-api-terraform/issues


## How it works

It is a REST API to store tasks through 3 fields, id, task and done, which is a boolean data type to handle the status of tasks.

All HTTP requests work through a lambda, there is a lambda for each type of request, get, post, put and delete, in the same way there are 4 endpoints for each type of HTTP request.

Additionally, they have an X-Ray trace configured that points to a group of CloudWatch logs.

## How to use this API

### Link to the API Gateway

https://j6fj5z0zwl.execute-api.us-east-1.amazonaws.com/v1/todos

### How to interact with the API

There is a link to a Postman Collection to interact with the api

https://www.getpostman.com/collections/3766cbb31024d770d910

## How to deploy this infrastructure in your own AWS account

Clone the repo, and have installed the AWS CLI and Terraform in your local machine, also have configure your AWS_ACCESS_KEY_ID & AWS_SECRET_ACCESS_KEY with the privileges to deploy all the resources, then change the name of the profile and aws id account in the main.tf

Then...

1)Inicialize terraform.
```js
terraform init

```
2) Review the terraform plan
```js
terraform plan
```

3) Deploy the infraestructure
```js
terraform apply
```

At the end the output is the endpoint to your api.

## License

[MIT](https://choosealicense.com/licenses/mit/)

