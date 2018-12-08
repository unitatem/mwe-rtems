MYDIR=$PWD

mkdir -p build
cd build

TARGET=arm-rtems4.11
BOARD=stm32f4
PREFIX=$MYDIR/install
../rtems/configure --target=${TARGET} --enable-rtemsbsp=${BOARD} --enable-tests=samples --prefix=${PREFIX}

make
make install

