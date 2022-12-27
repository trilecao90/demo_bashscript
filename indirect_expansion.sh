# write indirection expansion example in bash script

var1='content'
var2=var1
var3=var2

echo ${var2}
echo ${!var2}
echo ${var3}
echo ${!var3}