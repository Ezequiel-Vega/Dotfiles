# Qtile configuracion de las teclas
from libqtile.config import Key
from libqtile.command import lazy

mod = "mod4"

keys = [Key(key[0], key[1], *key[2:]) for key in [
        # ------------ Configuracion de Ventanas ------------
        
        # Moverse entre las pestañas
        ([mod], "j", lazy.layout.down()),
        ([mod], "k", lazy.layout.up()),
        ([mod], "h", lazy.layout.left()),
        ([mod], "l", lazy.layout.right()),

        # Cambiar tamaño de las pantallas
        ([mod, "shift"], "l", lazy.layout.grow()),
        ([mod, "shift"], "h", lazy.layout.shrink()),

        # Pantallas flotantes
        ([mod, "shift"], "f", lazy.window.toggle_floating()),

        # Intercambiar pantallas entre las ventanas
        ([mod, "shift"], "j", lazy.layout.shuffle_down()),
        ([mod, "shift"], "k", lazy.layout.shuffle_up()),

        # Cambiar tipo de distribucion de las ventanas
        ([mod], "Tab", lazy.next_layout()),
        ([mod, "shift"], "Tab", lazy.prev_layout()),

        # Eliminar ventanas
        ([mod], "w", lazy.window.kill()),

        # cambiar el focus de los monitores(Si se tiene mas de uno)
        ([mod], "period", lazy.next_screen()),
        ([mod], "comma", lazy.prev_screen()),

        # Resetear Qtile
        ([mod, "control"], "r", lazy.restart()),
        # Cerrar sesion
        ([mod, "control"], "q", lazy.shutdown()),

        # ------------ Configuracion de Aplicaciones ------------
        # Menu
        ([mod], "m", lazy.spawn("rofi -show run")),

        # Navegador entre ventanas
        ([mod, "shift"], "m", lazy.spawn("rofi -show")),

        # Buscador web
        ([mod], "b", lazy.spawn("google-chrome-stable")),
 
        # Terminal
        ([mod], "Return", lazy.spawn("alacritty")),

        # Captura de pantalla
        ([mod], "c", lazy.spawn("scrot")),

        # Discord
        ([mod], "d", lazy.spawn("discord-canary")),

        # OBS
        ([mod], "o", lazy.spawn("obs")),

        # Slack
        ([mod], "s", lazy.spawn("slack"))
    ]
]
