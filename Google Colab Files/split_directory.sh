read -p 'How Many Directories: ' F;
read -p 'Sub-Directories Prefix: ' S;

PARRENT=${PWD}
# cd $PARRENT 
n=0
for i in *
do
  if [ $((n+=1)) -gt $F ]; then
    n=1
  fi
  todir=$PARRENT/"$S"_$n
  [ -d "$todir" ] || mkdir "$todir" 
  mv "$i" "$todir" 
done
