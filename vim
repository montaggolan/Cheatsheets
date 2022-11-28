# save a file you edited in vim without the needed permissions
:w !sudo tee %

# open file in vim, at pattern
vi +/pattern [file]

i - insert
moving - hjkl and arrow keys
a - append
o - open line below the current one and begin inserting text
x - delete character under the cursor
cw - replace word with new word, after pressing ESC, removes anything left over from old word
dd - delete entire line
dw - delete word beneath the cursor
p - reinsert deleted text
P - insert the deleted text before the current line
r - replace the char beneath the cursor, doesn't leave you in insert mode
R - replace text by overwriting the text beginning at the cursor
u - undo latest change
~ - change case of the letter under the cursor
w - move cursor to the beginning of the next word
b - move cursor to the beginning of the current word
0 - move cursor to the beginning of the current line
$ - move cursor to the end of the current line
Ctrl-F - moves cursor one screen forward
Ctrl-B - moves cursor one screen backward
G - move cursor to the end of the file
10G - move cursor to line 10
1G - beginning
/ - search pattern in the text following the cursor
? - search pattern backwards
d$ - delete everything from the cursor to the end of the line
dG - delete everything from the cursor to the end of the file
ZZ - check if file has been changed, if yes, write and quit
ma - move cursor to a location and add mark.
`abba - move cursor to mark named abba
'abba - move cursor to the beginning of the line that the mark abba is on
yy - yank text without deleting it
"assyy - yank current line to register ass
"assp - paste text from register ass after the current line

# ex
:w - write to the file
:wq - write and quit
:q! - quit without saving
:q - quit (only if modifications have been saved)
:e <someFile> - edit another file
:e! <someFile> - edit another file and leave current without saving changes
:r <someFile> - include the contents of another file in the vi buffer (insert contents after current line)
:!<shell command> - run shell commands within vi
:r!<shell command> - run shell commands within vi, include stdout from the command in the buffer
:[x,y]s/pattern/replacement/flags - searches for pattern between lines x and y in the buffer, and replaces instances of pattern with the replacement, you can use the % symbol to refer to the entire file (instead of giving line-numbers). Leave x or y blank to refer to the cur line, $ refers to the last line of the file. Among the flags you can use are g to replace all instances of pattern on each line, c to ask for confirmation.
:x,y!command - execute named command with the text on line x through y as stdin and replaces the lines with the stdout of the command
:set ai turns on auto indentation of text
