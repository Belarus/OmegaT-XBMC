#!/bin/bash
set -x

g() {
  rm -rf source/$1
  mkdir -p source/$1
  pushd source/$1 || exit 1
  rm -rf translations
  tx init || exit 1
  tx set --auto-remote $2 || exit 1
  popd
}

g main https://www.transifex.com/projects/p/xbmc-main/
g addons https://www.transifex.com/projects/p/xbmc-addons/
g skins https://www.transifex.com/projects/p/xbmc-skins/
