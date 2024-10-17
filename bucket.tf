# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket
# Documentação de criação de bucket s3 com argumentos disponíveis para o resource bucket 
# além dos atributos do resource

# Criação de bucket para armazenar state remoto
resource "aws_s3_bucket" "remotebucket" {
  bucket = "johnz-remote-state"
}
/*
# Habilita o versionamento de arquivo de state .tfstate no bucket. 
resource "aws_s3_bucket_versioning" "bucket_versioning" {
  bucket = aws_s3_bucket.remotebucket.id
  versioning_configuration {
    status = "Enabled"
  }
}*/