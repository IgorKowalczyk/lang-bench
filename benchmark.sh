echo "- Language benchmark -"
for f in ./*; do
 if [ -d $f ]; then
  cd $f
  if [ -f "run.sh" ]; then
  echo -n "${f:2}: " && ./run.sh
  cd ..
  fi
 fi
done