all : joaoCod.l joaoCod.y
	clear
	flex -i joaoCod.l
	bison joaoCod.y
	gcc joaoCod.tab.c -o compilador -lfl -lm
	./compilador
