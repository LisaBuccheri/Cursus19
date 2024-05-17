# get_next_line
The goal of this project was to code a function that will return the line read in a file descriptor. This function allow to read a file line by line if set in a loop.
Similar to the getline() in C++.


### Skills
  - Unix
  - Algorithms & AI
  - Rigor

For this project you have to compile the files with your main has get_next_line(fd) is a function. 

#### main.c example
```c
#include "get_next_line.h"
#include <stdio.h>
#include <fcntl.h>

int main() {
	int fd = open("test.txt", O_RDONLY);
	char *line = NULL;

	while (line = get_next_line(fd)) {
		printf("%s", line);
    free(line);
	}
close(fd);
	return 0;
}
```

#### terminal command line
```terminal
gcc main.c get_next_line.c get_next_line_utils.c #(for the bonus) gcc main.c get_next_line_bonus.c get_next_line_utils_bonus.c
```

#### main.c example for the bonus
```
#include "get_next_line_bonus.h"
#include <stdio.h>
#include <fcntl.h>

int main() {
	int num = 3;	
	int fds[num];
  char *file_names[] = {"test.txt", "test2.txt", "test3.txt"}; 
	char *line = NULL;

	for (int i = 0; i < num; i++) {
		fds[i] = open(file_names[i], O_RDONLY);
		if (fds[i] == -1) {
			perror("Error while opening file");
			return 1;
		}
	}

	for (int i = 0; i < num; i++) {
		while (line = get_next_line(fds[i])) {
			printf("%s", line);
			free(line);
		}
		if (line) {
			free(line);
			line = NULL;
		}
		close(fds[i]);
	}
	return 0;
}
```

