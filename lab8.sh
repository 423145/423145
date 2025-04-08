// C Program with a Bug
#include <stdio.h>

int divide(int a, int b) {
    return a / b; // Bug: division by zero can cause runtime error
}

int main() {
    int x = 10;
    int y = 0; // Bug: setting y to zero
    int result;

    result = divide(x, y); // This will crash the program due to division by zero
    printf("The result of %d / %d is %d\n", x, y, result);

    return 0;
}


# Start GDB
gdb myprogram

# Set a breakpoint at main
break main

# Run the program
run

# Step through the code
step
next

# Set a breakpoint at a specific line
break 6

# Remove a breakpoint
delete <breakpoint_number>

# Set a watchpoint
watch y

# Change a variable
set variable y = 1

# Call a function
call divide(x, y)

# View the call stack
backtrace

# Change to a different frame
frame <frame_number>

# Analyze a core dump
gdb myprogram core
