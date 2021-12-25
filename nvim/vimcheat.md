
#Global 

| Command | Commentary                                                                                     |
| -----   | -------------------------------------------                                                    |
| K       | open man page for word under the cursor (idk where it works properly, help page should exists) |

#Cursor movement

| Command             | Commentary                                                                                                          |
| -----               | -------------------------------------------                                                                         |
| w                   | jump forwards to the start of a word                                                                                |
| W                   | jump forwards to the start of a word (words can contain punctuation)                                                |
| e                   | jump forwards to the end of a word                                                                                  |
| E                   | jump forwards to the end of a word (words can contain punctuation)                                                  |
| b                   | jump backwards to the start of a word                                                                               |
| B                   | jump backwards to the start of a word (words can contain punctuation)                                               |
| ge                  | jump backwards to the end of a word gE - jump backwards to the end of a word (words can contain punctuation)        |
| gj, gk, g$, g0, etc | if there is many symbols in line and this line on more then one lines, then gX can move on lines in one line        |
| gq                  | separate one line on few lines, if there are a lot of symbols in line and it can't fit on one line                  |
| gf                  | if we have <another_file> in our vim, and we have the another_file, this bind will open this file, ctrl+6 to return |
| gv                  | if you select something in visual mode, you can return to it via this                                               |
| %                   | move to matching character (default supported pairs: '()', '{}', '[]' - use :h matchpairs in vim for more info)     |
| 0                   | jump to the start of the line                                                                                       |
| ^                   | jump to the first non-blank character of the line                                                                   |
| $                   | jump to the end of the line                                                                                         |
| g_                  | jump to the last non-blank character of the line                                                                    |
| 5gg or 5G           | go to line 5                                                                                                        |
| gd                  | move to local declaration                                                                                           |
| gD                  | move to global declaration # Feels like the same                                                                    |
| fx                  | jump to next occurrence of character x                                                                              |
| tx                  | jump to before next occurrence of character x                                                                       |
| Fx                  | jump to previous occurence of character x                                                                           |
| Tx                  | jump to after previous occurence of character x                                                                     |
| ;                   | repeat previous f, t, F or T movement                                                                               |
| ,                   | repeat previous f, t, F or T movement, backwards                                                                    |
| }                   | jump to next paragraph (or function/block, when editing code)                                                       |
| {                   | jump to previous paragraph (or function/block, when editing code)                                                   |
| Ctrl + b            | move back one full screen                                                                                           |
| Ctrl + f            | move forward one full screen                                                                                        |
| Ctrl + d            | move forward 1/2 a screen                                                                                           |
| Ctrl + u            | move back 1/2 a screen                                                                                              |

#Insert mode - inserting/appending text

| Command             | Commentary                                                                                                          |
| -----               | -------------------------------------------                                                                         |
| i                   | insert before the cursor                                                                                            |
| I                   | insert at the beginning of the line                                                                                 |
| a                   | insert (append) after the cursor                                                                                    |
| A                   | insert (append) at the end of the lne                                                                               |
| o                   | append (open) a new line below the current line                                                                     |
| O                   | append (open) a new line above the current line                                                                     |
| ea                  | insert (append) at the end of the word                                                                              |
| Ctrl + h            | delete the character before the cursor during insert mode                                                           |
| Ctrl + w            | delete word before the cursor during insert mode                                                                    |
| Ctrl + j            | begin new line during insert mode                                                                                   |
| Ctrl + t            | indent (move right) line one shiftwidth during insert mode                                                          |
| Ctrl + d            | de-indent (move left) line one shiftwidth during insert mode                                                        |
| Ctrl + n            | insert (auto-complete) next match before the cursor during insert mode                                              |
| Ctrl + p            | insert (auto-complete) previous match before the cursor during insert mode                                          |
| Ctrl + rx           | insert the contents of register x                                                                                   |
| Esc                 | exit insert mode                                                                                                    |

#Editing
    
| Command             | Commentary                                                                                                          |
| -----               | -------------------------------------------                                                                         |
| r                   | replace a single character.                                                                                         |
| R                   | replace more than one character, until ESC is pressed.                                                              |
| J                   | join line below to the current one with one space in between                                                        |
| gJ                  | join line below to the current one without space in between                                                         |
| gwip                | reflow paragraph                                                                                                    |
| g~                  | switch case up to motion                                                                                            |
| gu                  | change to lowercase up to motion                                                                                    |
| gU                  | change to uppercase up to motion                                                                                    |
| cc                  | change (replace) entire line                                                                                        |
| C                   | change (replace) to the end of the line                                                                             |
| c$                  | change (replace) to the end of the line                                                                             |
| ciw                 | change (replace) entire word                                                                                        |
| cw or ce            | change (replace) to the end of the word                                                                             |
| s                   | delete character and substitute text                                                                                |
| S                   | delete line and substitute text (same as cc)                                                                        |
| xp                  | transpose two letters (delete and paste)                                                                            |
| u                   | undo                                                                                                                |
| U                   | restore (undo) last changed line                                                                                    |
| Ctrl + r            | redo                                                                                                                |
| .                   | repeat last command                                                                                                 |
| "_                  | if you want do something without copying it                                                                         |

#Marking text (visual mode)
    
| Command             | Commentary                                                                                                          |
| -----               | -------------------------------------------                                                                         |
| v                   | start visual mode, mark lines, then do a command (like y-yank)                                                      |
| V                   | start linewise visual mode                                                                                          |
| o                   | move to other end of marked area                                                                                    |
| Ctrl + v            | start visual block mode                                                                                             |
| O                   | move to other corner of block                                                                                       |
| aw                  | mark a word                                                                                                         |
| ab                  | a block with ()                                                                                                     |
| aB                  | a block with {}                                                                                                     |
| at                  | a block with <> tags                                                                                                |
| ib                  | inner block with ()                                                                                                 |
| iB                  | inner block with {}                                                                                                 |
| it                  | inner block with <> tags                                                                                            |
| Esc                 | exit visual mode                                                                                                    |

Tip Instead of b or B one can also use ( or { respectively.

#Visual commands

| Command             | Commentary                                                                                                          |
| -----               | -------------------------------------------                                                                         |
| >                   | shift text right                                                                                                    |
| <                   | shift text left                                                                                                     |
| y                   | yank (copy) marked text                                                                                             |
| d                   | delete marked text                                                                                                  |
| ~                   | switch case                                                                                                         |
| u                   | change marked text to lowercase                                                                                     |
| U                   | change marked text to uppercase                                                                                     |

#Cut and paste
    
| Command             | Commentary                                                                                                          |
| -----               | -------------------------------------------                                                                         |
| yy                  | yank (copy) a line                                                                                                  |
| 2yy                 | yank (copy) 2 lines                                                                                                 |
| yw                  | yank (copy) the characters of the word from the cursor position to the start of the next word                       |
| yiw                 | yank (copy) word under the cursor                                                                                   |
| yaw                 | yank (copy) word under the cursor and the space after or before it                                                  |
| y$                  | yank (copy) to end of line                                                                                          |
| p                   | put (paste) the clipboard after cursor                                                                              |
| P                   | put (paste) before cursor                                                                                           |
| dd                  | delete (cut) a line                                                                                                 |
| 2dd                 | delete (cut) 2 lines                                                                                                |
| dw                  | delete (cut) the characters of the word from the cursor position to the start of the next word                      |
| diw                 | delete (cut) word under the cursor                                                                                  |
| daw                 | delete (cut) word under the cursor and the space after or before it                                                 |
| D                   | delete (cut) to the end of the line                                                                                 |
| d$                  | delete (cut) to the end of the line                                                                                 |
| x                   | delete (cut) character                                                                                              |

#Indent text

| Command             | Commentary                                                                                                          |
| -----               | -------------------------------------------                                                                         |
| >>                  | indent (move right) line one shiftwidth                                                                             |
| <<                  | de-indent (move left) line one shiftwidth                                                                           |
| >%                  | indent a block with () or {} (cursor on brace)                                                                      |
| >ib                 | indent inner block with ()                                                                                          |
| >at                 | indent a block with <> tags                                                                                         |
| 3==                 | re-indent 3 lines                                                                                                   |
| =%                  | re-indent a block with () or {} (cursor on brace)                                                                   |
| =iB                 | re-indent inner block with {}                                                                                       |
| gg=G                | re-indent entire buffer                                                                                             |
| ]p                  | paste and adjust indent to current line                                                                             |

#Exiting

| Command             | Commentary                                                                                                          |
| -----               | -------------------------------------------                                                                         |
| :w                  | write (save) the file, but don't exit                                                                               |
| :w !sudo tee %      | write out the current file using sudo                                                                               |
| :wq or :x or ZZ     | write (save) and quit                                                                                               |
| :q                  | quit (fails if there are unsaved changes)                                                                           |
| :q! or ZQ           | quit and throw away unsaved changes                                                                                 |
| :wqa                | write (save) and quit on all tabs                                                                                   |

#Search and replace

| Command             | Commentary                                                                                                          |
| -----               | -------------------------------------------                                                                         |
| /pattern            | search for pattern                                                                                                  |
| ?pattern            | search backward for pattern                                                                                         |
| \vpattern           | 'very magic' pattern: non-alphanumeric characters are interpreted as special regex symbols (no escaping needed)     |
| n                   | repeat search in same direction                                                                                     |
| N                   | repeat search in opposite direction                                                                                 |
| :%s/old/new/g       | replace all old with new throughout file                                                                            |
| :%s/old/new/gc      | replace all old with new throughout file with confirmations                                                         |
| :noh[lsearch]       | remove highlighting of search matches                                                                               |
| ctrl+o              | go back where you was before searching                                                                              |

#Diff

| Command             | Commentary                                                                                                          |
| -----               | -------------------------------------------                                                                         |
| zf                  | manually define a fold up to motion                                                                                 |
| zd                  | delete fold under the cursor                                                                                        |
| za                  | toggle fold under the cursor                                                                                        |
| zo                  | open fold under the cursor                                                                                          |
| zc                  | close fold under the cursor                                                                                         |
| zr                  | reduce (open) all folds by one level                                                                                |
| zm                  | fold more (close) all folds by one level                                                                            |
| zi                  | toggle folding functionality                                                                                        |
| ]c                  | jump to start of next change                                                                                        |
| [c                  | jump to start of previous change                                                                                    |
| do or :diffg[et]    | obtain (get) difference (from other buffer)                                                                         |
| dp or :diffpu[t]    | put difference (to other buffer)                                                                                    |
| :diffthis           | make current window part of diff                                                                                    |
| :dif[fupdate]       | update differences                                                                                                  |
| :diffo[ff]          | switch off diff mode for current window                                                                             |

# Other

##vim help pages

| Command                                         | Commentary                                  |
| -----                                           | ------------------------------------------- |
| ctrl+]                                          | follow link                                 |
| ctrl+o                                          | go back where you was before following      |

Tip The commands for folding (e.g. za) operate on one level. To operate on all levels, use uppercase letters (e.g. zA).
Tip To view the differences of files, one can directly start Vim in diff mode by running vimdiff in a terminal. One can even set this as git difftool.

#Plugins 

## Easy motion
| Command               | Commentary                                                                                                                     |
| -----                 | -------------------------------------------                                                                                    |
| leader><leader>w(W)   | forwart begining word motion in the entire page (current line)                                                                 |
| leader><leader>b(B)   | backward beginning of word. (B includes special symbols like "-")                                                              |
| leader><leader>e(E)   | end of word forward.                                                                                                           |
| leader><leader>ge(gE) | end of word backward                                                                                                           |
| leader>j(k)           | line downward\upward                                                                                                           |
| leader><leader>f(F)   | find letter motion (f for to the right searching, F for to the left searching ). <leader><leader>fo - all 'o' are highlightedA |
| leader><leader>t(T)   | find letter and put cursor before(After) this letter in string                                                                 |
| leader><leader> n(N)  | jumn to latest '/' or '?' forward(backward)                                                                                    |
| leader><leader>s      | searching                                                                                                                      |

