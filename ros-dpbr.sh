#!/bin/sh
mkdir -p ./pbr
cd ./pbr


wget --no-check-certificate -c -O CN.txt https://raw.githubusercontent.com/soffchen/GeoIP2-CN/release/CN-ip-cidr.txt

{
echo "/ip firewall address-list"

for net in $(cat CN.txt) ; do
  echo "add list=List_ALL_China address=$net comment=CN_list"
done

} > ../CN.rsc

cd ..
rm -rf ./pbr
