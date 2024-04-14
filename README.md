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

Описание провайдера Yandex: https://terraform-provider.yandexcloud.net/

Описание работы с Terraform в Yandex Cloud:
https://yandex.cloud/ru/docs/tutorials/infrastructure-management/terraform-quickstart

Провайдер Yandex Cloud:
https://github.com/yandex-cloud/terraform-provider-yandex

Документация:
https://github.com/yandex-cloud/terraform-provider-yandex/tree/master/website/docs

