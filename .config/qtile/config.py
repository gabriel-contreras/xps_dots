# Configuration file for the Qtile WM
import os
import subprocess

from libqtile import layout, hook
from libqtile.config import Group, Key
from libqtile.lazy import lazy

from keys import keys
from screens import screens, theme

mod = "mod4"

### GROUPS ###
group_names = [
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    ""
]
groups = [Group(name) for name in group_names]
for i, (name) in enumerate(group_names):
    keys.extend([
        Key([mod], str(i+1), lazy.group[name].toscreen()),
        Key([mod, "shift"], str(i+1), lazy.window.togroup(name))
    ])

### LAYOUTS ###
if (theme == "skyrim"):
    border_focus = "#b16e2e"
elif (theme == "gow"):
    border_focus = "#bfa09b"
elif (theme == "hzd"):
    border_focus = "#54445c"
elif (theme == "sw"):
    border_focus = "#ac7e6a"
elif (theme == "world"):
    border_focus = "#34729f"

layouts = [
    layout.MonadTall(
        border_focus=border_focus,
        border_width=7,
        margin=12,
        single_margin=20
    )
]

widget_defaults = dict(font='sans', fontsize=14, padding=5)

dgroups_key_binder = None
dgroups_app_rules = []
follow_mouse_focus = True
bring_front_click = False
cursor_warp = False
floating_layout = layout.Floating()
auto_fullscreen = True
focus_on_window_activation = "smart"

wmname = "qtile"


@hook.subscribe.startup
def opacity():
    home = os.path.expanduser('.config/qtile/autostart.sh')
    subprocess.call([home])
