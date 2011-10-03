set -e
set -x
bison -d calculator.y
flex calculator.lex
g++ calculator.tab.c lex.yy.c -lfl -o calculator

