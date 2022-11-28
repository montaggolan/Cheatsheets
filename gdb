gdb

gdb <program> <corefile> - invoke gdb for use with a core file

gdb <program1>
attach <pid of program1> - attach to running process

gdb <program1> <pid of program1> - attach to running process

backtrace - display the call stack of the program at the time of failure (bt is an alias)

break foo.c:38 if (status = = 0) - sets a conditional bp at line 38 in the file foo.c, which triggers only when the variable status is 0

break x - sets breakpoint at 19. Breakpoints may be conditional, delayed, temporarily disabled etc.

condition - change the breakpoint condition

detach - detach gdb from the running process

disass <some function name/address range> - instruction-level debugging command, displays a disassembly of an address range that the user supplies

display/i $pc - instruction-level debugging command, causes the current instruction to be displayed after every nexti or stepi command. $pc is a gdb internal register that corresponds to the processor's program counter

file - load new executable into gdb

finish - continue execution until the current function returns

frame x - gets the stack frame of frame nr x

help <command>

info - get info about the status of the program being debugged

info address <var> - get info about exactly where a certain var is stored

info break

info frame

info locals - display the names and values of all local variables in the current function

info program - display the execution status of the program

info variables - display a list of all known variables in the program

list - lists several lines of code

next,step - moves to next line, step descends into functions, next skips over

nexti, stepi - instruction-level debugging analogs, nexti steps to the next instruction, stepi is the analog for step

print someStruct->someVar = "Linux" - changes struct member value to "Linux"

print <variableOrFunc> - prints value of a variable or a function (print can handle just about any expression)

print $x - print value of convenience variable nr x

ptype var - get detailed information about a variable's type or the def of a struct or typedef

quit

run <arguments for program being debugged> - runs the program

target - choose which one of three (one running under gdb, one tracing with a core file, one running as an independent process) programs to debug

until x - runs code until line x

up - get the stack frame above the current one

x <addr> - examine memory on a more fundamental level. addr can be replaced with a variable, the value of the variable is used as addr. x also takes a count and a type specification as an optional argument

x/100x 0x4200 - display 100 bytes of data in hex at the address 0x4200

watch x - set watchpont at x
