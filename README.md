# Prerequisites
#######
- JDK 11 
- Maven 3 
- MySQL 8

# Technologies 
- Spring MVC
- Spring Security
- Spring Data JPA
- Maven
- JSP
- Tomcat
- MySQL
- Memcached
- Rabbitmq
- ElasticSearch
# Database
Here,we used Mysql DB 
sql dump file:
- /src/main/resources/db_backup.sql
- db_backup.sql file is a mysql dump file.we have to import this dump to mysql db server
- > mysql -u <user_name> -p accounts < db_backup.sql

# Pipeline Prequisite : 
### For ECR Deployment.
- Docker should be Install on Jenkins Server , Jenkins user should be a part of Docker Group and restart the Jenkins Service.
- Terraform should be Install on Jenkins Server.
- Git Should be Install On Jenkins Server.
  
    AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID') : Add in Jenkins Credentials with Kind Secret text
    AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY') : Add in Jenkins Credentials with Kind Secret text

  Above variables used to authnticate AWS Account from Jenkins Pipeline to Deploy ECR using Terraform
  
### For App Deployment Pipeline
registryCredential = 'ecr:ap-south-1:awscreds' 
 - Create an IAM user having following Permissions.
   ![image](https://github.com/user-attachments/assets/05ea5503-0450-4417-ad56-90bbaa051008)

- Generate a Access Key and Secrete Key for Future Use.
- awscreds : add a credentials in Jenkins with kind AWS Credentials add Access Key and Secret Key of IAM User.

### For ECR Deployment.



