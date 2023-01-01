# ${parameter:-word} 
# If parameter is null or unset, the expansion of word is substituted
var=
echo ${var:-value} # print value
echo ${var} # print empty

# ${parameter:=word} 
# If parameter is null or unset, the expansion of word is assigned to parameter
var=
echo ${var:=value} # print value
echo ${var} # print value

# ${parameter:?word} 
# If parameter is null or unset, the expansion of word is written to standard error and the shell exits
var=value
echo ${var:?var is null or unset} # print value

# ${parameter:+word}
# If parameter is null or unset, nothing is substituted, otherwise the expansion of word is substituted.
var=value
echo ${var:+var is set properly} # print var is set properly

# ${parameter:offset:length}
var=0123456789
echo ${var:4:2} # print 45
echo ${var:4:-2} # print 4567
echo ${var: -4:2} # print 67
echo ${var: -4:-2} # print 67

var=(0 1 2 3 4 5 6 7 8 9)
echo ${var[@]:4:2} # print 4 5
echo ${var[@]: -4:2} # print 6 7

# ${!name[@]}
# ${!name[*]}
echo ${!var[@]} # print 0 1 2 3 4 5 6 7 8 9
echo ${!var[*]} # print 0 1 2 3 4 5 6 7 8 9

# ${#parameter}
echo ${#var[@]} # print 10 (size of array var)
echo ${#var[*]} # print 10 (size of array var)

# ${!prefix*}
# ${!prefix@}
var1=
var2=
echo ${!var*} # print var var1 var2
echo ${!var@} # print var var1 var2

# ${parameter#word}
# ${parameter##word}
var=0123456789
echo ${var#012} # print 3456789
echo ${var##012} # print 3456789

${parameter%word}
${parameter%%word}
echo ${var%789} # print 0123456
echo ${var%%789} # print 0123456

# ${parameter/pattern/string}
# ${parameter//pattern/string}
# ${parameter/#pattern/string}
# ${parameter/%pattern/string}
echo ${var/012/"& "}
echo ${var//012/"& "}
echo ${var/#012/"& "}
echo ${var/%789/"& "}

# ${parameter^pattern}
# ${parameter^^pattern}
# ${parameter,pattern}
# ${parameter,,pattern}
var=abcdefg
echo ${var^} # print Abcdefg
echo ${var^^} # print ABCDEFG
var=ABCDEFG
echo ${var,} # print aBCDEFG
echo ${var,,} # print abcdefg

# ${parameter@operator}
var=abcdefg
echo ${var@u} # print Abcdefg
echo ${var@U} # print ABCDEFG
var=ABCDEFG
echo ${var@L} # print abcdefg