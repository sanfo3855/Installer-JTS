#!/bin/sh
echo "--- getting JTS from github---"
git clone https://github.com/sanfo3855/JolieTestSuite
echo "------------------------------"
echo ""
./uninstallJTS-MacOS.sh -noecho
echo "installing JolieTestSuite/ to /usr/lib/"
sudo mkdir /usr/local/lib/JolieTestSuite
sudo cp -R JolieTestSuite/* /usr/local/lib/JolieTestSuite/
sudo rm -r JolieTestSuite

echo "enable command line control..."
echo "  JolieTestSuite <serviceToTest>.ol -> run test"
sudo cp ScriptMacOS/JolieTestSuite /usr/local/bin
sudo chmod +x /usr/local/bin/JolieTestSuite
echo "  JolieTestSuiteT <serviceToTest>.ol -> run test in trace mode"
sudo cp ScriptMacOS/JolieTestSuiteT /usr/local/bin
sudo chmod +x /usr/local/bin/JolieTestSuiteT

echo "  JolieTestSuiteCG <serviceToTest>.ol -> generate client"
sudo cp ScriptMacOS/JolieTestSuiteCG /usr/local/bin
sudo chmod +x /usr/local/bin/JolieTestSuiteCG
echo "  JolieTestSuiteCGT <serviceToTest>.ol -> generate client in trace mode"
sudo cp ScriptMacOS/JolieTestSuiteCGT /usr/local/bin
sudo chmod +x /usr/local/bin/JolieTestSuiteCGT

#echo "  JolieMetadata <serviceToGetMetadata>.ol -> get all metadata of a service"
#sudo cp ScriptMacOS/JolieMetadata /usr/bin
#sudo chmod +x /usr/bin/JolieMetadata

echo "JolieTestSuite Installed!!"
echo ""
echo "usage:"
echo "1. cd into service directory (there must be an init.ol file inside ./test_suite directory)"
echo "2. JolieTestSuiteCG to generate client"
echo "3. JolieTestSuite to run tests written inside the init.ol"
echo ""
