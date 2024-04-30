echo PRESS CTRL+C TO EXIT
if [ ! -f $1 ]; then
  echo PERM 1 IS REQUIRED, PLEASE SERVE A FLIE
fi
if [ ! $2 ]; then
  echo PERM 2 IS REQUIRED, PLEASE GIVE A INDEX
fi

while true; do
  opendrop send -f $1 -r $2 &
done
