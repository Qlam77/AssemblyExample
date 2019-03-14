#include <stdio.h>

extern int asm_main(void);

int main()
{
    printf("Doing math\n");
    asm_main();
    printf("Done math\n");
}
