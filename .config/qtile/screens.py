from libqtile.config import Screen

from bars import main_bar, theme

main_screen = Screen(
    top = main_bar,
    wallpaper = '/usr/share/backgrounds/' + theme + '.jpg',
    wallpaper_mode = 'fill'
)
screens = [main_screen]