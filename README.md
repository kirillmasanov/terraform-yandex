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

Настройка провайдера для работы с Yandex Cloud:
OAuth Token – https://yandex.cloud/ru/docs/iam/concepts/authorization/oauth-token
Cloud ID
Folder ID

Чтобы не хранить настройки в файле можно задать переменные окружения:
```
export YC_TOKEN=$(yc iam create-token); \
export YC_CLOUD_ID=$(yc config get cloud-id); \
export YC_FOLDER_ID=$(yc config get folder-id)
```
*предварительно выполнить `yc init`