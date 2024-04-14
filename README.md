Для возможности использования зеркал Yandex при скачивании модулей terraform необходимо создать файл .terraformrc в домашней директории пользователя.
В Linux командой:
```
cat << EOF >> ~/.terraformrc
provider_installation {
  network_mirror {
    url = "https://terraform-mirror.yandexcloud.net/"
    include = ["registry.terraform.io/*/*"]
  }
  direct {
    exclude = ["registry.terraform.io/*/*"]
  }
} 
EOF
```