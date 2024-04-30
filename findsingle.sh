echo PRESS CTRL+C TO EXIT
if [ ! -f $1 ]; then
  echo PERM 1 IS REQUIRED, PLEASE SERVE A NAME
fi

while true; do
  echo SNIFFING FOR 10 SECONDS, OPEN AIRDROP TAB IN FINDER
  finds=$(timeout 10 opendrop find 2>&1 | grep -i $1)
  echo $finds
done

