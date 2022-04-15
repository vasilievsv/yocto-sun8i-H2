## Сборка Yocto под WSL2

Проверка наличия wsl и версии
```
$ wsl -l -v
```
Если версия ниже 2 или wsl нет смотрим  инструкцию по установке/апгрейду https://docs.microsoft.com/en-us/windows/wsl/install-manual

Если все ок переходим в WSL. Сборка тестировалась на Ubuntu 20

# Установка пакетов для нормальной работы Yocto
```
$ sudo apt-get install gawk wget git-core diffstat unzip texinfo gcc-multilib build-essential chrpath socat cpio python python3 python3-pip python3-pexpect xz-utils debianutils iputils-ping libsdl1.2-dev xterm
```

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
third-party/meta-customer   - Мета-слой с набором патчей для включения rs485 в драйвере ядра
build/local.conf            - Настройка сборки дистрибутива, сейчас дефолтная сборка для разработки + поддержка deb
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

## Шилд на 2 порта RS-485
![image](https://user-images.githubusercontent.com/32985830/163589087-43b1ac8a-1eab-4c00-b09e-1f3d88b87940.png)

![image](https://user-images.githubusercontent.com/32985830/163589279-aed38e7b-69e0-4c81-ab58-39b81f1d8ff6.png)

