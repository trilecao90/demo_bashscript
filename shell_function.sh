# void func()
print1() {
    echo "Hello World"
}
print1

# void func(arg1, arg2, ..., argN)
print2() {
    echo $1
}
print2 "Hello World"

# type func(arg1, arg2, ..., argN)
add() {
    return $(($1+$2))
}
add 5 3
echo $?