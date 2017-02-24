#!/bin/sh

urls=(
  "https://raw.githubusercontent.com/xeor/arch-install-script/master/1_pre.sh"
  "https://raw.githubusercontent.com/xeor/arch-install-script/master/2_setup.sh"
  "https://raw.githubusercontent.com/xeor/arch-install-script/master/3_boot-efi.sh"
  "https://raw.githubusercontent.com/xeor/arch-install-script/master/4_post.sh"
)

for url in "${urls[@]}"; do
  filename=$(echo ${url} | awk -F/ '{print $NF}')
  echo -n "Downloading ${filename} - "
  curl -f ${url} 2> /dev/null > ${filename}
  if [[ "$?" == 0 ]]; then
    echo "done"
  else
    echo "error"
  fi
done
