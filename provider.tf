terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
}

# provider "yandex" {
#   token     = "<OAuth>"
#   cloud_id  = "<идентификатор облака>"
#   folder_id = "<идентификатор каталога>"
# }
