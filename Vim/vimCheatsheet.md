# NORMAL MODE

## Actions

command | description 
--- |:---
h,j,k,l | left,down,up,right
y | yank or copy; yy is by line
p | paste
i | insert
a | append or insert after
c | change
d or x | delete, dd is by line
V/v | v visual (character based); V Visual (by line)
ggVG | select all
:w/,w | write
:wa | write all (saves all open files)
:q | quit
:e | edit or reload
"+ | access system clipboard
! | force
qa | q starts record a is registry to record to q stops
qaq | clear register a
@a | @ calls recording, a is the registry to play

## FileBrowsing

:NERDTree                = directory tree browser
:CtrlP                   = fuzzy file search
:MRU                     = recently updated files
:pwd                     = present working directory
:cd %:p:h                = change to directory of currently open file
,cd
:lcd %:p:h               = same as above but only changes directory for active window
:tabnew                  = open new tab
:vert                    = open in split vertical
<C_w> T                  = move open split to new tab
<C_W> arrow              = corresponding arrow key moves between open splits
<C_W> H,J,K,L            = move split to corresponding direction
gt                       = go to next tab
gT                       = go to previous tab
#gt                      = go to # tab, # = 3 is third tab
:buffer-list             = interact with the buffer

## UndoRedo

u                        = undo
<C_R>                    = redo
.                        = repeat last command

## CopyPaste

y                        = copy selected text or selection from following movement
yy                       = copy a line
p                        = paste after the cursor, P paste before
:%y+                     = copy all
ggVG                     = select all
<A_p>                    = cycle yank history, <A_P> cycles backwards
dd                       = delete a line
<C_V>                    = block select
<C_I>                    = block insert
ys iw "                  = surround word with "
cs " '                   = change surrounding " to '
ds '                     = delete surrounding '
#Selecting
<C_S>                    = vim-multiple-cursors
<C_S> <C_S>              = Select multiples of the item selected initially

## GoTo

gg                       = beginning of file
G                        = end of file
0                        = start of line
$                        = end of line
5G                       = go to line 5
}                        = jump to next empty line
{                        = jump to previous empty line
%                        = jump to matching opening or closing mark ([{}])

## IndentAlign

>>                       = indent line
5>>                      = indent 5 lines
V jj >                   = indent visually selected lines
>%                       = when on cursor on curly braces indent braces and block
]p                       = align pasted block with surrounding text
>i {                     = indent block within - sub [ or ( accordingly

## SearchReplace
* and #                  = * search forward for word under cursor # backward
:Ag patt dir             = search cwd for pattern
/pattern                 = search for a pattern
N                        = repeat search in opposite direction
:%s/old/new/gc           = replace old with new throughout file with confirmations
:g/.rej (/normal "Ayy    = select every line with ".rej (" to A record, paste with "ap
:noh                     = remove highlighting of search matches

ma                       = a-z sets a marker
'a                       = a-z goes to start of line with corresponding marker
`a                       = a-z goes to corresponding marker position
:marks                   = list marks

# VISUAL MODE

," or ,'                 = double or single quote highlighted text
,( or ,[ or ,{           = parenthesis, bracket or curly brace highlighted text
+                        = expand selection, while - contracts it
zf                       = Manually fold selection, zo open fold, zd delete fold, zR
                           open all folds, zr open level of folds, zM close all folds,
                           zm close level of folds
za                       = Toggle folds
Ctrl+v Shift+i           = Ctrl+v arrow to select block then Shift+i to insert comment
                           then Esc to insert block comments

# INSERT MODE

<C_t>                    = indent at start of line
<C_d>                    = remove indent at start of line
0 <C_d>                  = remove all indentation from line
<C_R> "                  = paste from registry " for vim reg + for sys clipboard

# SETTINGS MODE

:set nu!                 = toggle line numbers
:set rnu!                = toggle relative line numbers
:set ai!                 = toggle auto-indent
:set foldmethod=manual   = make zf, zo and zd work for folding selection blocks
:Goyo                    = open distraction free, for markdown and txt :Goyo! exits

:SaveSession paus        = save windows and tabs session
:OpenSession             = open saved session

# UPDATE

> cd ~/.vim_runtime
> git pull --rebase
