**STEPS**
1. Create new repository secret on github repository and add the following variables:
- AWS_SECRET_KEY_ID
- AWS_SECRET_ACCESS_KEY
- TF_VAR_aws_key_pub
2. Alter the s3 backend key folder
3. Edit the .github/workflows/* yml files to properly configure the stages
4. $ git add .
5. git commit -m "Add terraform configuration to create VM on AWS"
6. git push
7. Check it out the github pipeline stages running on github actions
- Remember that the stage apply and destroy depend on the user dispatch on the github actions