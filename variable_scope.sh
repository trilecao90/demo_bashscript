var1="Apple" # global variable

func() {
    var2="Banana" # global variable
    local var3="Cherry" # local variable
    echo "Inside func(): $var1 $var2 $var3"
}

func

echo "Outside func(): $var1 $var2 $var3"