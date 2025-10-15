terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.3.2"
    }
  }
}

variable "prefix" {
  type = string
}

resource "random_pet" "this" {
  prefix = var.prefix
  length = 8
}

resource "random_pet" "cat" {
  prefix = var.prefix
  length = 1
}

resource "random_pet" "dog" {
  prefix = var.prefix
  length = 2
}
resource "random_pet" "bark" {
  prefix = var.prefix
  length = 2
}
output "name" {
  value = random_pet.this.id
}
