#include "libasm.h"
#include <stdio.h>

int main(void) {
  int len = printf("salut la tcheam\n");
  printf("Printf : %d, ft_strlen : %d\n", len,
         (int)ft_strlen("salut la tcheam\n"));
}
