" =============================================================================
" Filename: autoload/lightline/colorscheme/NeonBlood.vim
" Author: Henry WS
" License: GPL License
" =============================================================================

" Common colors
let s:blue   = [ '#00ffff', 75 ]
let s:green  = [ '#7eff00', 76 ]
let s:purple = [ '#9f00b8', 176 ]
let s:red1   = [ '#ff0000', 168 ]
let s:red2   = [ '#cb0000', 168 ]
let s:yellow = [ '#ffe300', 180 ]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

if lightline#colorscheme#background() ==# 'light'
  " Light variant
  let s:fg    = [ '#ffffff', 238 ]
  let s:bg    = [ '#08041c', 255 ]
  let s:gray1 = [ '#a3a3a3', 238 ]
  let s:gray2 = [ '#08041c', 255 ]
  let s:gray3 = [ '#a3a3a9', 250 ]
  let s:green = [ '#7eff00', 35 ]

  let s:p.inactive.left   = [ [ s:bg,  s:gray3 ], [ s:bg, s:gray3 ] ]
  let s:p.inactive.middle = [ [ s:gray3, s:gray2 ] ]
  let s:p.inactive.right  = [ [ s:bg, s:gray3 ] ]
else
  " Dark variant
  let s:fg    = [ '#ffffff', 145 ]
  let s:bg    = [ '#08041c', 235 ]
  let s:gray1 = [ '#a3a3a3', 241 ]
  let s:gray2 = [ '#08041c', 235 ]
  let s:gray3 = [ '#392b3c', 240 ]

  let s:p.inactive.left   = [ [ s:gray1,  s:bg ], [ s:gray1, s:bg ] ]
  let s:p.inactive.middle = [ [ s:gray1, s:gray2 ] ]
  let s:p.inactive.right  = [ [ s:gray1, s:bg ] ]
endif

" Common
let s:p.normal.left    = [ [ s:bg, s:green, 'bold' ], [ s:fg, s:gray3 ] ]
let s:p.normal.middle  = [ [ s:fg, s:gray2 ] ]
let s:p.normal.right   = [ [ s:bg, s:green, 'bold' ], [ s:fg, s:gray3 ] ]
let s:p.normal.error   = [ [ s:red2, s:bg ] ]
let s:p.normal.warning = [ [ s:yellow, s:bg ] ]
let s:p.insert.right   = [ [ s:bg, s:blue, 'bold' ], [ s:fg, s:gray3 ] ]
let s:p.insert.left    = [ [ s:bg, s:blue, 'bold' ], [ s:fg, s:gray3 ] ]
let s:p.replace.right  = [ [ s:bg, s:red1, 'bold' ], [ s:fg, s:gray3 ] ]
let s:p.replace.left   = [ [ s:bg, s:red1, 'bold' ], [ s:fg, s:gray3 ] ]
let s:p.visual.right   = [ [ s:fg, s:purple, 'bold' ], [ s:fg, s:gray3 ] ]
let s:p.visual.left    = [ [ s:fg, s:purple, 'bold' ], [ s:fg, s:gray3 ] ]
let s:p.tabline.left   = [ [ s:fg, s:gray1 ] ]
let s:p.tabline.tabsel = [ [ s:bg, s:purple, 'bold' ] ]
let s:p.tabline.middle = [ [ s:gray3, s:gray2 ] ]
let s:p.tabline.right  = copy(s:p.normal.right)

let g:lightline#colorscheme#NeonBlood#palette = lightline#colorscheme#flatten(s:p)
