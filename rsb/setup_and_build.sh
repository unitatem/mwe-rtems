RED='\033[0;31m'
NC='\033[0m'

THIS_DIR=$PWD

echo -e "${RED}SOLVING DEPENDENCIES${NS}"
# sudo apt install bison
# sudo apt install flex
# sudo apt install python-dev 

echo -e "${RED}CHECK${NC}"
rtems-source-builder/source-builder/sb-check

echo -e "${RED}AVAILABLE TARGETS${NC}"
cd rtems-source-builder/rtems
../source-builder/sb-set-builder --list-bsets

echo -e "${RED}BULDING${NC}"
../source-builder/sb-set-builder --prefix=$THIS_DIR/4.11 4.11/rtems-sparc

