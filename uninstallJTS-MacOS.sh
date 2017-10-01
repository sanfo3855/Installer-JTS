#!/bin/bash
if [ "$1" = "-noecho" ]; then
  JTS_HOME=/usr/local/lib/JolieTestSuite
  if [ -d "/usr/local/lib/JolieTestSuite" ]; then
  sudo rm -r /usr/local/lib/JolieTestSuite
  fi
  JTS_HOME=/usr/local/lib/JolieTestSuite
  if [ -e "/usr/local/bin/JolieTestSuite" ]; then
  sudo rm /usr/local/bin/JolieTestSuite
  fi
  JTS_HOME=/usr/local/lib/JolieTestSuite
  if [ -e "/usr/local/bin/JolieTestSuiteT" ]; then
  sudo rm /usr/local/bin/JolieTestSuiteT
  fi
  JTS_HOME=/usr/local/lib/JolieTestSuite
  if [ -e "/usr/local/bin/JolieTestSuiteCG" ]; then
  sudo rm /usr/local/bin/JolieTestSuiteCG
  fi
  JTS_HOME=/usr/local/lib/JolieTestSuite
  if [ -e "/usr/local/bin/JolieTestSuiteCGT" ]; then
  sudo rm /usr/local/bin/JolieTestSuiteCGT
  fi
  #if [ -e "/usr/bin/JolieMetadata" ]; then
  #sudo rm /usr/bin/JolieMetadata
  #fi
else
  echo "Trying to uninstall JolieTestSuite..."
  JTS_HOME=/usr/local/lib/JolieTestSuite
  if [ -d "/usr/local/lib/JolieTestSuite" ]; then
    sudo rm -r /usr/local/lib/JolieTestSuite
    echo "  JolieTestSuite removed"
    JTS_HOME=/usr/local/lib/JolieTestSuite
    if [ -e "/usr/local/bin/JolieTestSuite" ]; then
    sudo rm /usr/local/bin/JolieTestSuite
    fi
    JTS_HOME=/usr/local/lib/JolieTestSuite
    if [ -e "/usr/local/bin/JolieTestSuiteT" ]; then
    sudo rm /usr/local/bin/JolieTestSuiteT
    fi
    JTS_HOME=/usr/local/lib/JolieTestSuite
    if [ -e "/usr/local/bin/JolieTestSuiteCG" ]; then
    sudo rm /usr/local/bin/JolieTestSuiteCG
    fi
    JTS_HOME=/usr/local/lib/JolieTestSuite
    if [ -e "/usr/local/bin/JolieTestSuiteCGT" ]; then
    sudo rm /usr/local/bin/JolieTestSuiteCGT
    fi
    #if [ -e "/usr/bin/JolieMetadata" ]; then
    #sudo rm /usr/bin/JolieMetadata
    #fi
    echo "  command line control disabled"
    echo "Done!"
    echo ""
  else
    echo "  !! JolieTestSuite not installed :/"
  fi
fi
