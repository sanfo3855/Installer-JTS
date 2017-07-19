#!/bin/sh
if [ "$1" = "-repoGet" ]; then
  sudo rm -r JolieTestSuite
  git clone https://github.com/sanfo3855/JolieTestSuite
fi
sudo mkdir /usr/lib/JolieTestSuite
sudo cp -R JolieTestSuite/* /usr/lib/JolieTestSuite/
sudo cp Script/JolieTestSuite /usr/bin
sudo chmod +x /usr/bin/JolieTestSuite
sudo cp Script/JolieTestSuiteT /usr/bin
sudo chmod +x /usr/bin/JolieTestSuiteT
sudo cp Script/JolieTestSuiteCG /usr/bin
sudo chmod +x /usr/bin/JolieTestSuiteCG
