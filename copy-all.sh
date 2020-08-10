SRC_DIR=../decapod-yaml

for type_origin in `cd $SRC_DIR;ls -d */ `
do
  echo $i;
  type=$(echo $type_origin | awk -F / '{print $1}') 
    for site_origin in `ls -d */ `
    do
      site=$(echo $site_origin | awk -F / '{print $1}') 
      echo $site/$type
      ls $SRC_DIR/$type/output/$site
      cp $SRC_DIR/$type/output/$site/* $site/
    done                                                                                                   
done                                                                                                   
