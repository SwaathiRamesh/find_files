powd=$PWD
cd $1
find  -regex '.*/.*\.\(c\)$' > $powd/diff_list
cd $powd
awk -F"/" '{print $NF}' diff_list > diff_list1
sort diff_list1 | uniq > diff_list
rm diff_list1
