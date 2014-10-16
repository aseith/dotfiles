" Interaktion mit dem X11-Clipboard über xclip.
fun! X11Copy()
  silent %w !xclip -selection clipboard -f | xclip
endfun
fun! X11CopySel()
  silent '<,'>w !xclip -selection clipboard -f | xclip
endfun
fun! X11PasteClipboard()
  r !xclip -selection clipboard -o
endfun
fun! X11PastePrimary()
  r !xclip -o
endfun
nmap <Leader>xc :call X11Copy()<CR>
vmap <Leader>xc :call X11CopySel()<CR>
nmap <Leader>xp :call X11PasteClipboard()<CR>
nmap <Leader>xP :call X11PastePrimary()<CR>
set pastetoggle=<F10>

" Functions

" Remove trailing whitespace
function! StripWhitespace ()
    exec ':%s/ \+$//gc'
endfunction
map ,s :call StripWhitespace ()<CR>

