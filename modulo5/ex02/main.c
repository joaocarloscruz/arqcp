#include <stdio.h>
#include <string.h>

int main(void) {
  union union_u1 {
    char vec[32];
    float a;
    int b;
  } u;
  union union_u1 *ptr = &u;

  printf("a)\n");
  strcpy(ptr->vec, "arquitectura de computadores");
  printf("[1]=%s\n", ptr->vec);

  ptr->a = 123.5;
  printf("[2]=%f\n", ptr->a);

  ptr->b = 2;
  printf("[3]=%d\n", ptr->b);

  printf("[1]=%s\n", ptr->vec);
  printf("[2]=%f\n", ptr->a);
  printf("[3]=%d\n", ptr->b);


    struct struct_s1 {
        char vec[32];
        float a;
        int b;
    } s;

    struct struct_s1 *ptr_s = &s;

	printf("b)\n");
    strcpy(ptr_s->vec, "arquitectura de computadores");
    printf("[1]=%s\n", ptr_s->vec);

    ptr_s->a = 123.5;
    printf("[2]=%f\n", ptr_s->a);

    ptr_s->b = 2;
    printf("[3]=%d\n", ptr_s->b);

    printf("[1]=%s\n", ptr_s->vec);
    printf("[2]=%f\n", ptr_s->a);
    printf("[3]=%d\n", ptr_s->b);


    return 0;
}
  

