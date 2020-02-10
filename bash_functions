comp(){
	g++ -std=c++17 -DLOCAL "$1".cpp -o "$1" && echo "Compilado!" && ./"$1" && rm -rf "$1"
}

contest() {
	mkdir "$1"
	cd "$1"
	n=$2
	if [ -z $n ]; then
		n=0;
	fi
	chars=({a..z})
	for i in `seq 1 $n`; do
		cp ~/snippets/template.cpp "${chars[$i-1]}.cpp"
	done
	touch "input"
}
