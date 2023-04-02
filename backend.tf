//disable this if the kms and bucket is not yet created
terraform {
 backend "s3" {
   bucket         = "my-tfstate-bucket0123"
   key            = "state/terraform.tfstate"
   region         = "us-east-1"
   encrypt        = true
   kms_key_id     = "alias/terraform-bucket-key"
   dynamodb_table = "terraform-state"
 }
}