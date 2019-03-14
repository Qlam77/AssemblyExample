#include <stdio.h>

extern int asm_main(void);

int main()
{
    printf("Printing Name\n");
    asm_main();
    printf("Done printing name\n");
}
