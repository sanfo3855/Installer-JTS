#!/bin/bash
if [ "$1" = "-noecho" ]; then
  if [ -d "/usr/lib/JolieTestSuite" ]; then
  sudo rm -r /usr/lib/JolieTestSuite
  fi
  if [ -e "/usr/bin/JolieTestSuite" ]; then
  sudo rm /usr/bin/JolieTestSuite
  fi
  if [ -e "/usr/bin/JolieTestSuiteT" ]; then
  sudo rm /usr/bin/JolieTestSuiteT
  fi
  if [ -e "/usr/bin/JolieTestSuiteCG" ]; then
  sudo rm /usr/bin/JolieTestSuiteCG
  fi
  if [ -e "/usr/bin/JolieTestSuiteCGT" ]; then
  sudo rm /usr/bin/JolieTestSuiteCGT
  fi
else
  echo "Trying to uninstall JolieTestSuite..."
  if [ -d "/usr/lib/JolieTestSuite" ]; then
    sudo rm -r /usr/lib/JolieTestSuite
    echo "  JolieTestSuite removed"
    if [ -e "/usr/bin/JolieTestSuite" ]; then
    sudo rm /usr/bin/JolieTestSuite
    fi
    if [ -e "/usr/bin/JolieTestSuiteT" ]; then
    sudo rm /usr/bin/JolieTestSuiteT
    fi
    if [ -e "/usr/bin/JolieTestSuiteCG" ]; then
    sudo rm /usr/bin/JolieTestSuiteCG
    fi
    echo "  command line control disabled"
    echo "Done!"
    echo ""
  else
    echo "  !! JolieTestSuite not installed :/"
  fi
fi
