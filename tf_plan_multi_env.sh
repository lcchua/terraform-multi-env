echo $1
terraform workspace select $1
echo "${1}.tfvars"
terraform plan -var-file=${1}.tfvars
