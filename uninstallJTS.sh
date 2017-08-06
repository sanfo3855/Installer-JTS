if [ "$1" = "-noecho" ]; then
  if [ -d "/usr/lib/JolieTestSuite" ]; then
  rm -r /usr/lib/JolieTestSuite
  fi
  if [ -e "/usr/bin/JolieTestSuite" ]; then
  rm /usr/bin/JolieTestSuite
  fi
  if [ -e "/usr/bin/JolieTestSuiteT"
  rm /usr/bin/JolieTestSuiteT
  fi
  if [ -e "/usr/bin/JolieTestSuiteCG" ]; then
  rm /usr/bin/JolieTestSuiteCG
  fi
  if [ -e "/usr/bin/JolieTestSuiteCGT" ]; then
  rm /usr/bin/JolieTestSuiteCGT
  fi
else
  echo "Trying to uninstall JolieTestSuite..."
  if [ -d "/usr/lib/JolieTestSuite" ]; then
    echo "  JolieTestSuite removed"
  rm -r /usr/lib/JolieTestSuite
    if [ -e "/usr/bin/JolieTestSuite" ]; then
    echo "  command line control disabled"
    rm /usr/bin/JolieTestSuite
    fi
    if [ -e "/usr/bin/JolieTestSuiteT" ]; then
    rm /usr/bin/JolieTestSuiteT
    fi
    if [ -e "/usr/bin/JolieTestSuiteCG" ]; then
    rm /usr/bin/JolieTestSuiteCG
    fi
    echo "Done!"
    echo ""
  else
    echo "  !! JolieTestSuite not installed :/"
  fi
fi
