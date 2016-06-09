#!/bin/sh
# Base16 Fahrenheit - Shell color setup script
# (adapted from Google base16)
# fcpg (http://github.com/fcpg)

if [ "${TERM%%-*}" = 'linux' ]; then
    # This script doesn't support linux console (use 'vconsole' template instead)
    return 2>/dev/null || exit 0
fi

color00="00/00/00" # Base 00 - Black
color01="d7/5f/00" # Base 08 - Red
color02="af/87/5f" # Base 0B - Green
color03="ff/d7/87" # Base 0A - Yellow
color04="5f/87/af" # Base 0D - Blue
color05="87/5f/5f" # Base 0E - Magenta
color06="ff/d7/af" # Base 0C - Cyan
color07="a8/a8/a8" # Base 05 - White
color08="26/26/26" # Base 03 - Bright Black
color09="d7/87/5f" # Base 08 - Bright Red
color10="d7/af/87" # Base 0B - Bright Green
color11="ff/d7/5f" # Base 0A - Bright Yellow
color12="87/af/d7" # Base 0D - Bright Blue
color13="af/87/af" # Base 0E - Bright Magenta
color14="ff/ff/d7" # Base 0C - Bright Cyan
color15="ff/ff/ff" # Base 07 - Bright White

color_foreground="ff/af/5f" # Base 05
color_background="00/00/00" # Base 00
color_cursor="d7/5f/00" # Base 05

if [ -n "$TMUX" ]; then
  # tell tmux to pass the escape sequences through
  # (Source: http://permalink.gmane.org/gmane.comp.terminal-emulators.tmux.user/1324)
  printf_template="\033Ptmux;\033\033]4;%d;rgb:%s\007\033\\"
  printf_template_var="\033Ptmux;\033\033]%d;rgb:%s\007\033\\"
  printf_template_custom="\033Ptmux;\033\033]%s%s\007\033\\"
elif [ "${TERM%%-*}" = "screen" ]; then
  # GNU screen (screen, screen-256color, screen-256color-bce)
  printf_template="\033P\033]4;%d;rgb:%s\007\033\\"
  printf_template_var="\033P\033]%d;rgb:%s\007\033\\"
  printf_template_custom="\033P\033]%s%s\007\033\\"
else
  printf_template="\033]4;%d;rgb:%s\033\\"
  printf_template_var="\033]%d;rgb:%s\033\\"
  printf_template_custom="\033]%s%s\033\\"
fi

# 16 color space
printf $printf_template 0  $color00
printf $printf_template 1  $color01
printf $printf_template 2  $color02
printf $printf_template 3  $color03
printf $printf_template 4  $color04
printf $printf_template 5  $color05
printf $printf_template 6  $color06
printf $printf_template 7  $color07
printf $printf_template 8  $color08
printf $printf_template 9  $color09
printf $printf_template 10 $color10
printf $printf_template 11 $color11
printf $printf_template 12 $color12
printf $printf_template 13 $color13
printf $printf_template 14 $color14
printf $printf_template 15 $color15

# foreground / background / cursor color
if [ -n "$ITERM_SESSION_ID" ]; then
  # iTerm2 proprietary escape codes
  printf $printf_template_custom Pg a8a8a8 # forground
  printf $printf_template_custom Ph 000000 # background
  printf $printf_template_custom Pi ffffff # bold color
  printf $printf_template_custom Pj ffaf5f # selection color
  printf $printf_template_custom Pk 000000 # selected text color
  printf $printf_template_custom Pl d75f00 # cursor
  printf $printf_template_custom Pm 000000 # cursor text
else
  printf $printf_template_var 10 $color_foreground
  printf $printf_template_var 11 $color_background
  printf $printf_template_var 12 $color_cursor
fi

# clean up
unset printf_template
unset printf_template_var
unset color00
unset color01
unset color02
unset color03
unset color04
unset color05
unset color06
unset color07
unset color08
unset color09
unset color10
unset color11
unset color12
unset color13
unset color14
unset color15
unset color_foreground
unset color_background
unset color_cursor
