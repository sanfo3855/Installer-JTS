#!/bin/sh
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#                                                                                     #
# Copyright (C) 2017 Matteo Sanfelici <matteosanfelici@gmail.com>                     #
#                                                                                     #
# Permission is hereby granted, free of charge, to any person obtaining a copy of     #
# this software and associated documentation files (the "Software"), to deal in the   #
# Software without restriction, including without limitation the rights to use,       #
# copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the     #
# Software, and to permit persons to whom the Software is furnished to do so, subject #
# to the following conditions:                                                        #
#                                                                                     #
# The above copyright notice and this permission notice shall be included in all      #
# copies or substantial portions of the Software.                                     #
#                                                                                     #
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, #
# INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A       #
# PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT  #
# HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION   #
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE      #
# SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.                              #
#                                                                                     #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

echo "--- getting JTS from github---"
git clone https://github.com/sanfo3855/JolieTestSuite
echo "------------------------------"
echo ""
./uninstallJTS-Linux.sh -noecho
echo "installing JolieTestSuite/ to /usr/lib/"
sudo mkdir /usr/lib/JolieTestSuite
sudo cp -R JolieTestSuite/* /usr/lib/JolieTestSuite/
sudo rm -r JolieTestSuite

echo "enable command line control..."
echo "  JolieTestSuite <serviceToTest>.ol -> run test"
sudo cp ScriptLinux/JolieTestSuite /usr/bin
sudo chmod +x /usr/bin/JolieTestSuite
echo "  JolieTestSuiteT <serviceToTest>.ol -> run test in trace mode"
sudo cp ScriptLinux/JolieTestSuiteT /usr/bin
sudo chmod +x /usr/bin/JolieTestSuiteT

echo "  JolieTestSuiteCG <serviceToTest>.ol -> generate client"
sudo cp ScriptLinux/JolieTestSuiteCG /usr/bin
sudo chmod +x /usr/bin/JolieTestSuiteCG
echo "  JolieTestSuiteCGT <serviceToTest>.ol -> generate client in trace mode"
sudo cp ScriptLinux/JolieTestSuiteCGT /usr/bin
sudo chmod +x /usr/bin/JolieTestSuiteCGT

#echo "  JolieMetadata <serviceToGetMetadata>.ol -> get all metadata of a service"
#sudo cp ScriptLinux/JolieMetadata /usr/bin
#sudo chmod +x /usr/bin/JolieMetadata

echo "JolieTestSuite Installed!!"
echo ""
echo "usage:"
echo "1. cd into service directory (there must be an init.ol file inside ./test_suite directory)"
echo "2. JolieTestSuiteCG <microservice>.ol   to generate client"
echo "3. JolieTestSuite    to run tests written inside the init.ol"
echo ""
