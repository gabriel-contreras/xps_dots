from libqtile import bar, widget

# Set the theme
from colorschemes.world import *
theme = "world"

if (theme == "skyrim"): prompt = "🍮: "
elif (theme == "gow"): prompt = "𝝮: "
elif (theme == "hzd"): prompt = "🏹: "
elif (theme == "sw"): prompt = "🤖: "
elif (theme == "world"): prompt = "🌐: "

main_bar = bar.Bar(
     [
         widget.GroupBox(
            active= white,
            borderwidth=3,
            margin_x = 10,
            fontsize=20,
            inactive = black,
            this_current_screen_border = current_group_border
         ),
         widget.Prompt(
            prompt=prompt,
            font='firacode',
            cursor_color = white,
            fontshadow = current_group_border,
            foreground = white,
         ),
         widget.Spacer(
            length = bar.STRETCH
         ),
         widget.TextBox(
            text = "",
            foreground = white
         ),
         widget.Clock(
            format='%I:%M %p',
            font = 'firacode',
            fontsize = 16,
            foreground=white
         ),
         widget.Spacer(
            length = bar.STRETCH
         ),
         widget.Systray(
            font = 'firacode',
            foreground=black
         ),
         widget.TextBox(
            text="",
            foreground=black
         ),
         widget.Battery(
            format='{percent:2.0%}',
            font = 'firacode',
            foreground=black
         ),
         widget.Sep(
            linewidth=0,
            padding=6
         ),
         widget.TextBox(
            text="",
            foreground=black
         ),
         widget.Volume(
            font = 'firacode',
            foreground=black
         ),
         widget.Sep(
            linewidth=0,
            padding=6
         ),
         widget.Pomodoro(
            color_active = white,
            color_break = current_group_border,
            color_inactive = black,
            font = 'firacode',
            fontshadow = current_group_border,
            fontsize = 14,
            length_long_break = 15,
            length_pomodori = 25,
            length_short_break = 5,
            num_pomodori = 4,
            prefix_active = ' ',
            prefix_break = ' ',
            prefix_inactive = 'Pomodoro',
            prefix_long_break = ' ',
            prefix_paused = 'Paused'
         )
     ],
     size = 32,
     background = [grad1, grad2]
 )