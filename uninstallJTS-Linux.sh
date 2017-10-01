#!/bin/bash
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
  #if [ -e "/usr/bin/JolieMetadata" ]; then
  #sudo rm /usr/bin/JolieMetadata
  #fi
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
    if [ -e "/usr/bin/JolieTestSuiteCGT" ]; then
    sudo rm /usr/bin/JolieTestSuiteCGT
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
