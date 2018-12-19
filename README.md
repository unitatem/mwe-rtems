# mwe-rtems
Minimal working example for setting up RTEMS project for STM32F401xC based on provided RTEMS examples.  
RTEMS configured to use USART6 with baud 115200 (TX = PC6, RX = PC7)
```sh
git clone git@github.com:unitatem/mwe-rtems.git
cd mwe-rtems
git submodule init
git submodule update
```

## rtems-source-builder
In order to build RTEMS first you have to build tools.
```sh
rsb/setup_and_build.sh
```
Then add tools install directory to system PATH
- temporary solution: rsb/tools_path.txt

## RTEMS
Run bootstrap and configuration in order to create and set configuration.
```sh
./run_bootstrap.sh
./configure.sh
```
Build RTEMS
```sh
cd build
make
```

## RTEMS hello
Find hello sample project.  
Convert .exe file to .bin file.  
Install on device.  
```sh
cd build/arm-rtems4.11/c/stm32f4/testsuites/samples/hello
arm-rtems4.11-objcopy -O binary hello.exe hello.bin
st-flash write hello.bin 0x8000000
```

You can read messages send via serial interface.  
(I am assuming that device will be discovered by system as /dev/ttyUSB0)
```sh
cu -l /dev/ttyUSB0 -s 115200
```
In case of problems with permissions run
```sh
sudo chmod 666 /dev/ttyUSB0
```

![alt text](/docs/screen_hello_log.png "Screenshot hello logs")

## RTEMS blink
Use ready to go wrapping script to build RTEMS and install blink sample project on device
```sh
./install_blink.sh
```

![alt text](/docs/screen_blink_log.png "Screenshot blink logs")
