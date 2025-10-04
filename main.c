#include "libasm.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
  char *read_bytes = malloc(sizeof(char) * 100);

  ft_read(1, read_bytes, 123);
  ft_write(1, read_bytes, ft_strlen(read_bytes));

  char *dest = malloc((sizeof(char) * ft_strlen(read_bytes)) + 1);
  dest = ft_strcpy(dest, read_bytes);
  printf("\n1st str : %s\n", read_bytes);
  printf("copied str : %s\n", dest);

  char *dupstr = ft_strdup(read_bytes);

  ft_write(1, dupstr, ft_strlen(dupstr));
}

// Diane's silk dress costs $89

// TODO - ft_strdup
// TODO - ft_strcmp
// TODO - ft_strcpy