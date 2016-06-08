let s:p = {'normal': {}, 'inactive': {}, 'insert': {},
        \ 'replace': {}, 'visual': {}, 'tabline': {}}

let s:has_stl = 0
if exists('&fcs') && &fcs != ""
    let s:fcs_a = split(&fcs, ',')
    for s:opt in s:fcs_a
        let s:item = split(s:opt, ':')
        if s:item[0] == 'stl' && s:item[1] != ""
            let s:has_stl = 1
            break
        endif
    endfor
endif
unlet! s:fcs_a s:opt s:item

let s:p.inactive.left     = [[ '#a8a8a8', '#000000', 248,   0 ],
                          \  [ '#262626', '#000000', 235,   0 ]]
if s:has_stl
  let s:p.inactive.middle = [[ '#262626', '#000000', 235,   0 ]]
else
  let s:p.inactive.middle = [[ '#000000', '#262626',   0, 235 ]]
endif
let s:p.inactive.right    = [[ '#262626', '#000000', 235,   0 ]]

let s:p.insert.left       = [[ '#000000', '#d7af87',   0, 180 ],
                          \  [ '#ffd75f', '#262626', 221, 235 ],
                          \  [ '#875f5f', '#262626',  95, 235 ],
                          \  [ '#d75f00', '#262626', 166, 235 ]]

let s:p.normal.error      = [[ '#ffffff', '#d70000',  15, 160 ]]
let s:p.normal.left       = [[ '#ffffff', '#262626',  15, 235 ],
                          \  [ '#ffd75f', '#262626', 221, 235 ],
                          \  [ '#875f5f', '#262626',  95, 235 ],
                          \  [ '#d75f00', '#262626', 166, 235 ]]
if s:has_stl
  let s:p.normal.middle   = [[ '#d7875f', '#000000', 173,   0 ]]
else
  let s:p.normal.middle   = [[ '#000000', '#262626',   0, 235 ]]
endif
let s:p.normal.right      = [[ '#875f5f', '#000000',  95,   0 ],
                          \  [ '#5f5faf', '#000000',  61,   0 ],
                          \  [ '#ffaf5f', '#000000', 215,   0 ]]
let s:p.normal.warning    = [[ '#ffffff', '#870000',  15,  88 ]]

let s:p.replace.left      = [[ '#000000', '#d75f00',   0, 166 ],
                          \  [ '#ffd75f', '#262626', 221, 235 ],
                          \  [ '#875f5f', '#262626',  95, 235 ],
                          \  [ '#d75f00', '#262626', 166, 235 ]]

let s:p.tabline.left      = [[ '#875f5f', '#262626',  95, 235 ]]
let s:p.tabline.middle    = [[ '#262626', '#262626', 235, 235 ]]
let s:p.tabline.right     = [[ '#a8a8a8', '#262626', 248, 235 ]]
let s:p.tabline.tabsel    = [[ '#ffd75f', '#262626', 221, 235 ]]

let s:p.visual.left       = [[ '#000000', '#ffaf5f',   0, 215 ],
                          \  [ '#ffd75f', '#000000', 221,   0 ],
                          \  [ '#875f5f', '#000000',  95,   0 ],
                          \  [ '#d75f00', '#000000', 166,   0 ]]

unlet! s:has_stl

let g:lightline#colorscheme#fahrenheit#palette = s:p
