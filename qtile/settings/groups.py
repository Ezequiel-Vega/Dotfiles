# Qtile Espacios de trabajo
from libqtile.config import Key
from libqtile.config import Group
from libqtile.command import lazy
from settings.keys import mod
from settings.keys import keys

"Nombre de los grupos"
groups = [Group(i) for i in [
        "dev",
        "nav",
        "term",
        "rec",
        "tw"
    ]
]

for i, group in enumerate(groups):
    current_key = str(i + 1)
    keys.extend([
        # Cambiar al espacio de trabajo N
        Key([mod], current_key, lazy.group[group.name].toscreen()),
        # Enviar la ventana al espacio de trabajo N
        Key([mod, "shift"], current_key, lazy.window.togroup(group.name))
    ])
