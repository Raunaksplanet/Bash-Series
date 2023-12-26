#!/bin/bash
# --------------------------------- #
: '
Syntax of functions:-
1.
<Func_name>(){
	commands
}

	OR	

2.
function <Func_name>{
	commands
}
'
# --------------------------------- #
function hello {
	echo "Hello " $1 "Ji"
}

bye(){
	echo "Bye Ji"
}

hello "Raunak"
bye
# --------------------------------- #
add() {
	local var1=$1
	var2=$2
	echo "Adding two number: $((var1+var2))"
}

add 10 10 
# --------------------------------- #