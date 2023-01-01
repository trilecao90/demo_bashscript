# sequence
dec2bin=({0..1}{0..1}{0..1}{0..1}{0..1}{0..1}{0..1}{0..1})
echo ${dec2bin[@]}

# parameter expansion
a=(1test 2test 3test 4test 5test)
echo ${a[@]%test}