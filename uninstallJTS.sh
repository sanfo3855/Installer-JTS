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
else
  echo "Trying to uninstall JolieTestSuite..."
  if [ -d "/usr/lib/JolieTestSuite" ]; then
    echo "  JolieTestSuite removed"
  sudo rm -r /usr/lib/JolieTestSuite
    if [ -e "/usr/bin/JolieTestSuite" ]; then
    echo "  command line control disabled"
    sudo rm /usr/bin/JolieTestSuite
    fi
    if [ -e "/usr/bin/JolieTestSuiteT" ]; then
    sudo rm /usr/bin/JolieTestSuiteT
    fi
    if [ -e "/usr/bin/JolieTestSuiteCG" ]; then
    sudo rm /usr/bin/JolieTestSuiteCG
    fi
    echo "Done!"
    echo ""
  else
    echo "  !! JolieTestSuite not installed :/"
  fi
fi
