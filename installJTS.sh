#!/bin/sh
if [ "$1" = "-repoGet" ]; then
  echo "--- getting JTS from github---"
  git clone https://github.com/sanfo3855/JolieTestSuite
  echo "------------------------------"
  echo ""
fi
./uninstallJTS.sh -noecho
echo "installing JolieTestSuite/ to /usr/lib/"
mkdir /usr/lib/JolieTestSuite
cp -R JolieTestSuite/* /usr/lib/JolieTestSuite/
rm -r JolieTestSuite

echo "enable command line control..."
echo "  JolieTestSuite <serviceToTest>.ol -> run the test"
cp Script/JolieTestSuite /usr/bin

echo "  JolieTestSuiteT <serviceToTest>.ol -> run test in trace mode"
cp Script/JolieTestSuiteT /usr/bin

echo "  JolieTestSuiteCG <serviceToTest>.ol -> genarate client"
cp Script/JolieTestSuiteCG /usr/bin

echo "  JolieTestSuiteCGT <serviceToTest>.ol -> generate client in trace mode"
cp Script/JolieTestSuiteCGT /usr/bin

echo "JolieTestSuite Installed!!"
echo ""
echo "usage:"
echo "1. cd into service directory (there must be an init.ol file inside ./test_suite directory)"
echo "2. JolieTestSuiteCG to generate client"
echo "3. JolieTestSuite to run tests written inside the init.ol"
echo ""
