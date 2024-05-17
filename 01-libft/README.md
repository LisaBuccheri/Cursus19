# libft

This first project as a 19 student (member of 42 campus) has enabled us to consolidate our pool skills. We recoded a number of functions from the standard C library, as well as other utility functions that we'll be reusing throughout our course.

### Skills
  - Rigor
  - Imperative programming
  - Algorithms & AI

### Command line

```make
make #compile the library
make clean #delete the object files
make fclean #clean the project, delete the libft.a and the object files
make re #remake, clean the project and compile the lib again
```

Once you've compiled the library there will be a libft.a you can use it in a main.c file. Don't forget to add the libft.h to the main.c and compile the libft.a with your main.c.

#### main.c example
```c
#include <stdio.h>
#include "libft.h"

int main() {

	printf("%d\n", ft_tolower('A'));

	return 0;
}```

### terminal command line
```terminal
gcc main.c libft.a
```
