mkdir -p build
cd build

TARGET=sparc-rtems4.11
PREFIX=$PWD/install
../rtems/configure --target=${TARGET} --enable-rtemsbsp=sis --enable-tests=samples --prefix=${PREFIX}

