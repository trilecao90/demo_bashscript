ls *ay.sh # pattern match 0 or more
ls arra?.sh # pattern match 0 or 1
ls [a-z][a-z][a-z][a-z][a-z].sh # print array.sh
ls [[:alpha:]][[:alpha:]][[:alpha:]][[:alpha:]][[:alpha:]].sh # print array.sh

# pattern list
pattern_list=(*ay.sh arra?.sh)
for i in ${pattern_list[@]}
do
ls ${i}
done