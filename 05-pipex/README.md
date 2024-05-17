# pipex
This project aims to deepen your understanding of the two concepts that you already know: Redirections and Pipes. It is an introductory project for the bigger UNIX projects that will appear later on in the cursus. 

###  Skills

  - Unix
  - Imperative programming

### Makefike command

```make
make #compile the project
make clean #delete the object file
make fclean #clean the project
make re #remake clean the project and compile it again
```
Once you'he compiled, you have to provide some arguments to the program "./pipex".
Our program has to behave exactly like the command shell 
< file1 cmd1 | cmd2 > file2

```bash
#so that command
 ./pipex infile "ls -l" "wc -l" outfile
#should be the same has 
< infile ls -l | wc -l > outfile
```
