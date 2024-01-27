# ---------------------------------------------
# Terraform configuration
# ---------------------------------------------
terraform {
  required_version = ">= 0.6"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}


# ---------------------------------------------
# Provider
# ---------------------------------------------
provider "aws" {
  profile = "terraform"
  region  = "ap-northeast-1"
}

# ---------------------------------------------
# Variables
# ---------------------------------------------
# 変数名：project
# 型：string
variable "project" {
  type = string
}

# 変数名：environment
# 型：string
variable "environment" {
  type = string
}

# 変数名：vpc_address
# 型：string
variable "vpc_address" {
  type = string
}

# 変数名：public_1a_address
# 型：string
variable "public_1a_address" {
  type = string
}

# 変数名：http_port
# 型：number
variable "http_port" {
  type = number
}

# 変数名：https_port
# 型：number
variable "https_port" {
  type = number
}

# 変数名：ssh_port
# 型：number
variable "ssh_port" {
  type = number
}

# ---------------------------------------------
# Variables(追加)
# ---------------------------------------------
variable "key_pair_path" {
  type = string
}

variable "ami_name" {
  type = string
}
