terraform {
  required_providers {
    kubernetes = {
      source = "hashicorp/kubernetes"
    }
    helm = {
      source = "hashicorp/helm"
    }
  }
}

variable "host" {
  type = string
}

variable "client_certificate" {
  type = string
}

variable "client_key" {
  type = string
}

variable "cluster_ca_certificate" {
  type    = string
  default = ""
}

provider "kubernetes" {
  host = var.host

  client_certificate = base64decode(var.client_certificate)
  client_key         = base64decode(var.client_key)
  #  cluster_ca_certificate = base64decode(var.cluster_ca_certificate)
  insecure           = true
}

provider "helm" {
  kubernetes {
    host = var.host

    client_certificate = base64decode(var.client_certificate)
    client_key         = base64decode(var.client_key)
    #    cluster_ca_certificate = base64decode(var.cluster_ca_certificate)
    insecure           = true
  }
}
