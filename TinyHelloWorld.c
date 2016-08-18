char *str = "Hello World!\n";

void print(void) {
    asm (
        "movq $13, %%rdx \n\t"
        "movq %0, %%rsi  \n\t"
        "movq $1, %%rdi  \n\t"
        "movq $1, %%rax  \n\t"
        "syscall      \n\t"
        ::"r"(str):"rdx","rsi","rdi");
}
#if 1
void exit(void) {
    asm (
        "movq $42, %rdi \n\t"
        "movq $60, %rax \n\t"
        "syscall        \n\t ");
}
#endif

void nomain(void) {
    print();
    exit();
}
