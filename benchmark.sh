echo "- Language benchmark -"
for f in ./*; do
 if [ -d $f ]; then
  cd $f
  if [ -f "run" ]; then
  echo -n "${f:2}: " && ./run
  cd ..
  fi
 fi
done