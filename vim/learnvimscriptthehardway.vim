"===============================================================================
"                           learnvimscriptthehardway                            
"                                                                               
" This file contains my attempts to solve the exercises proposed at the         
" book 'Learn Vim Script the Hard Way'.  I would highly recommend everyone to   
" try it. VIM is the tool that you will spend most of your time - whenever      
" you are at your machine. Thus, the more you know it the better for you =D      
"                                                                               
" The book in html can be found here:                                           
"                https://learnvimscriptthehardway.stevelosh.com                 
"                                                                               
" Obs: I have configured a colorscheme for this file so I think the flow of     
" ideas are better organized. Thus, to get the colors and all mappings and      
" functions working, it is necessary to source this file on VIM. You can do it  
" by running on Normal mode                                                     
" :source %                                                                     
"===============================================================================




"===============================================================================
"                   Some configuration for this file                            
"===============================================================================
set bg=dark
hi Normal ctermfg=white ctermbg=black

let maplocalleader = ","

syntax match myComment /^".*/ contains=stringToTest,
                                      \ stringTest,
                                      \ myTitle,
                                      \ myExercise,
                                      \ myExText

syntax match  stringToTest /String to Test Commands/ contained
syntax match  myExercise   /Exercise [0-9]\+/        contained

syntax region myTitle    start=/"[=]\{10,\}/   end=/"[=]\{10,\}/     contained
syntax region stringTest start=/" beginString/ end=/endString/       contained
syntax region myExText   start=/" ---/         end=/" ---[ ]\{1,\}$/ contained

hi myComment      ctermfg=245  ctermbg=none 
hi stringToTest   ctermfg=red  ctermbg=none  cterm=underline
hi stringTest     ctermfg=130  ctermbg=none 
hi myTitle        ctermfg=243  ctermbg=234
hi myExercise     ctermfg=blue ctermbg=none  cterm=underline
hi myExText       ctermfg=33   ctermbg=none  cterm=italic



"===============================================================================
"                           String to test mappings                             
"===============================================================================
" String to Test Commands
" beginString
"   This is the second part of the three part tutorial on mapping keys in
"   Vim. You can 'read the other two parts from rhe' following pages: Mapping
"   keys in Vim - Tutorial (Part 1) Mapping keys in Vim - Tutorial (Part 3)
"   1 Finding unused keys 2 Key notation 3 Maps with the same prefix 4 Map
"   comments 5 Supplying a count to a map 6 Using multiple Ex commands in a
"   map 7 Using space characters in a map 8 ...
" endString



"===============================================================================
"                                  chapter 9                                    
"===============================================================================

" Exercise 1 
" ---                                                                           
" Create a mapping similar to the one we just looked at, but for single         
" quotes instead of double quotes.                                              
" ---                                                                           

inoremap <buffer> <localleader>q <esc>bi'<esc>ea'<esc>


" Exercise 2
" ---                                                                           
" Try using vnoremap to add a mapping that will wrap whatever text you          
" have visually selected in quotes. You'll probably need the `< and `>          
" commands for this, so read up on them with :help `<.                          
" ---                                                                           

vnoremap <buffer> <localleader>q <esc>`>a'<esc>`<i'<esc>


" Exercise 3
" ---                                                                           
" Map H in normal mode to go to the beginning of the current line. Since h      
" moves left you can think of H as a "stronger" h.                              
" ---                                                                           

nnoremap <buffer> H 0


" Exercise 4
" ---                                                                           
" Map L in normal mode to go to the end of the current line. Since l moves      
" right you can think of L as a "stronger" l.                                   
" ---                                                                           

nnoremap <buffer> L $


" Exercise 5
" ---                                                                           
" Find out what commands you just overwrote by reading :help H and :help        
" L. Decide whether you care about them.                                        
" ---                                                                           

"===============================================================================
"                                  chapter 12                                   
"===============================================================================

