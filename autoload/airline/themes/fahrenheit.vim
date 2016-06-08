let g:airline#themes#fahrenheit#palette = {}

let s:N1 = ['#ffffff', '#262626',  15, 235]
let s:N2 = ['#d75f00', '#000000', 166,   0]
let s:N3 = ['#ffd75f', '#262626', 221, 235]
let s:N4 = ['#ffaf5f', '#000000', 215,   0]
let s:N5 = ['#5f5faf', '#000000',  61,   0]
let s:N6 = ['#875f5f', '#000000',  95,   0]
let g:airline#themes#fahrenheit#palette.normal =
    \ airline#themes#generate_color_map(s:N1, s:N2, s:N3, s:N4, s:N5, s:N6)
let g:airline#themes#fahrenheit#palette.normal_modified = {
    \ 'airline_a': [ '#ffaf5f', '#262626', 215, 235]
    \ }

let s:I1 = ['#000000', '#d7af87', 0,   180]
let s:I2 = ['#d75f00', '#000000', 166,   0]
let s:I3 = ['#ffd75f', '#262626', 221, 235]
let g:airline#themes#fahrenheit#palette.insert =
    \ airline#themes#generate_color_map(s:I1, s:I2, s:I3, s:N4, s:N5, s:N6)
let g:airline#themes#fahrenheit#palette.insert_paste = {
            \ 'airline_a': ['#000000', '#d7875f', 0, 173],
            \ }

let s:R1 = ['#000000', '#d75f00', 0,   166]
let s:R2 = ['#d75f00', '#000000', 166,   0]
let s:R3 = ['#ffd75f', '#262626', 221, 235]
let g:airline#themes#fahrenheit#palette.replace =
    \ airline#themes#generate_color_map(s:R1, s:R2, s:R3, s:N4, s:N5, s:N6)

let s:V1 = ['#000000' , '#ffaf5f' ,   0, 215]
let s:V2 = ['#875f5f' , '#000000' ,  95,   0]
let s:V3 = ['#ffd75f' , '#262626' , 221, 235]
let g:airline#themes#fahrenheit#palette.visual =
    \ airline#themes#generate_color_map(s:V1, s:V2, s:V3, s:N4, s:N5, s:N6)


let s:IA1 = ['#a8a8a8', '#000000', 248,   0, '']
let s:IA2 = ['#875f5f', '#000000',  95,   0, '']
let s:IA3 = ['#875f5f', '#000000',  95,   0, '']
let g:airline#themes#fahrenheit#palette.inactive =
  \ airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3, s:IA3, s:IA3, s:IA3)

let g:airline#themes#fahrenheit#palette.accents = {
            \ 'red': [ '#AF5F5F' , '' , 235 , '', 'bold' ]
            \ }

if !get(g:, 'loaded_ctrlp', 0)
  finish
endif

let s:CP1 = ['#875f5f', '#262626',  95, 235]
let s:CP2 = ['#d75f00', '#000000', 166, 235]
let s:CP3 = ['#ffd75f', '#262626', 221, 235]
let g:airline#themes#fahrenheit#palette.ctrlp =
    \ airline#extensions#ctrlp#generate_color_map(s:CP1, s:CP2, s:CP3)

