#! /bin/bash
RED='\033[0;31m'
GREEN='\33[0;32m'
NC='\033[0m'


printf "${GREEN}Proses Build Mining....${NC}" >&2
{
sudo apt-get install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev && git clone https://github.com/xmrig/xmrig && mkdir xmrig/build && cd xmrig/build && cmake .. && make -j$(nproc)
}&> /dev/null &&
printf "${GREEN}\nSetup Complete " >&2 ||
printf "${RED}\nError Occured " >&2

printf "${GREEN}\nMINING SIAP TUNGGU 5s${NC}\n" >&2
sleep 5
{
./xmrig -a rx/0 -o monero.herominers.com:10191 -u 433CYoDYyqAXvXd66gamBU6g2EttGeNp1ekdwhWqAM2jRjVXUSYA4gHcS8bYdE3c4y7DJ4cZpKaFP89697v1Gf4uCphXMzG -k --tls -p wk1
}
