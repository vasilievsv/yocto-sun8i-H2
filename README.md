## DIY Yocto дистрибутива для шилда на 2 порта RS-485
![image](https://user-images.githubusercontent.com/32985830/163590032-d84f0943-8463-40f4-8f81-e4c9355a1b6c.png)

## Сборка Yocto под WSL2

Проверка наличия wsl и версии
```
$ wsl -l -v
```
Если версия ниже 2 или wsl нет смотрим  инструкцию по установке/апгрейду https://docs.microsoft.com/en-us/windows/wsl/install-manual

Если все ок переходим в WSL. Сборка тестировалась на Ubuntu 20

Структура 
```
.
├── README.md
├── build
│   └── conf
│       ├── bblayers.conf
│       ├── local.conf
│       └── templateconf.cfg
├── build.sh
├── install.sh
└── layers
    ├── bsp
    └── third-party
        └── meta-customer
```
        
```
third-party/meta-customer   - Мета-слой с набором патчей для включения rs485 в драйвере ядра
build/local.conf            - Настройка сборки дистрибутива
build/bblayers.conf         - Настройка слоев участвующих в сборке
```

```
$ install.sh                - Скрипт инициализации репозиториев
$ build.sh                  - Скрипт старта сборки
```
После завершения сборки образ для SD карты будет лежать в директории
```
./build/tmp/deploy/images/orange-pi-zero/core-image-minimal-orange-pi-zero-<какойто номер>.rootfs.wic.bz2
```
Копируем файл обратно на раздел /mnt/c/<папка> и записываем его https://www.balena.io/etcher/
