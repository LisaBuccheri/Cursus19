# push_swap
The aim of this project is to get us to sort data on a stack, with a limited set of instructions, using the smallest possible number of actions. 
The game consists of sort the stack a with an empty b stack and with a limited sort instructions.
The instructions allowed was: 
  - sa (swap a): Swaps the first 2 elements at the top of the a stack. Does nothing if there is only one or none.
  - sb (swap b ): Swaps the first 2 elements at the top of stack b. Does nothing if there is only one or none.
  - ss : sa and sb at the same time.
  - pa (push a): Takes the first element at the top of b and puts it on a. Does nothing if b is empty.
  - pb (push b): Takes the first element on top of a and sets it to b. Does nothing if a is empty.
  - ra (rotate a): Shifts all elements in stack a upwards by one position. The first element becomes the last.
  - rb (rotate b): Shifts all elements in stack b upwards by one position. The first element becomes the last.
  - rr: ra and rb at the same time.
  - rra (reverse rotate a): Shifts all elements in stack a down by one position. The last element becomes the first.
  - rrb (reverse rotate b): Shifts all elements in stack b down by one position. The last element becomes the first.
  - rrr: rra and rrb at the same time.

### Skills

  - Unix
  - Algorithms & AI
  - Imperative programming
  - Rigor

### Makefike command

```make
make #compile the project
make clean #delete the object file
make fclean #clean the project
make re #remake clean the project and compile it again
make checker #will compile the check that checked if the stack is sort
```

You have to pass a number series has argument to the push_swap program.

####program
Will print out each movement made by the program
```terminal
./push_swap 9 6 68 15 7
ra
pb
ra
ra
pb
sa
ra
pa
pa
```
Will wait and read the instructions in the standard input (you have to past the instruction above to sort the serie number)
```terminal
./checker 9 6 68 15 7

```
You can pass the push_swap result to see if it's properly sort the stack. 
Return OK if it's well sort and stack b empty.
Return KO if not.
```terminal
ARG="9 6 68 15 7"; ./push_swap $ARG | ./checker $ARG
OK
```
