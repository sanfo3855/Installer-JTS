#!/bin/sh
echo "--- getting JTS from github---"
git clone https://github.com/sanfo3855/JolieTestSuite
echo "------------------------------"
echo ""
./uninstallJTS.sh -noecho
echo "installing JolieTestSuite/ to /usr/lib/"
sudo mkdir /usr/lib/JolieTestSuite
sudo cp -R JolieTestSuite/* /usr/lib/JolieTestSuite/
sudo rm -r JolieTestSuite

echo "enable command line control..."
echo "  JolieTestSuite <serviceToTest>.ol -> run the test"
sudo cp Script/JolieTestSuite /usr/bin
sudo chmod +x /usr/bin/JolieTestSuite

echo "  JolieTestSuiteT <serviceToTest>.ol -> run test in trace mode"
sudo cp Script/JolieTestSuiteT /usr/bin
sudo chmod +x /usr/bin/JolieTestSuiteT

echo "  JolieTestSuiteCG <serviceToTest>.ol -> genarate client"
sudo cp Script/JolieTestSuiteCG /usr/bin
sudo chmod +x /usr/bin/JolieTestSuiteCG
echo "  JolieTestSuiteCGT <serviceToTest>.ol -> generate client in trace mode"
sudo cp Script/JolieTestSuiteCGT /usr/bin
sudo chmod +x /usr/bin/JolieTestSuiteCGT

echo "JolieTestSuite Installed!!"
echo ""
echo "usage:"
echo "1. cd into service directory (there must be an init.ol file inside ./test_suite directory)"
echo "2. JolieTestSuiteCG to generate client"
echo "3. JolieTestSuite to run tests written inside the init.ol"
echo ""
