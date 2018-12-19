cd build
make

echo -e "\ninstaling...\n"
cd arm-rtems4.11/c/stm32f4/testsuites/samples/blink
make install

