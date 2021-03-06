# Qtiles configuraciones de los Widgets
from libqtile import widget
from settings.theme import colors
from settings.networking import network

# Funcion para el color base
base = lambda fg='text', bg='dark': {
    'foreground': colors[fg],
    'background': colors[bg]
}

# Funcion para el separador
separator = lambda: widget.Sep(**base(), linewidth=0, padding=5)

# Funcion para los iconos
icon = lambda fg='text', bg='dark', fontsize=16, text="?": widget.TextBox(
    **base(fg, bg),
    fontsize=fontsize,
    text=text,
    padding=12
)

# Funcion para la PawerLine
powerline = lambda fg="light", bg="dark": widget.TextBox(
   **base(fg, bg),
    text="", # Icon: fa-caret-left
    fontsize=50,
    padding=-1
)

# Funciones para los espacios de trabajo
workspaces = lambda: [
    separator(),
    widget.GroupBox(
        **base(fg='light'),
        font='UbuntuMono Nerd Font',
        fontsize=14,
        margin_y=3,
        margin_x=0,
        padding_y=3,
        padding_x=6,
        borderwidth=1,
        active=colors['active'],
        inactive=colors['inactive'],
        rounded=False,
        highlight_method='block',
        urgent_alert_method='block',
        urgent_border=colors['danger'],
        this_current_screen_border=colors['focus'],
        this_screen_border=colors['grey'],
        other_current_screen_border=colors['dark'],
        other_screen_border=colors['dark'],
        disable_drag=True
    ),
    separator(),
    widget.WindowName(**base(fg='focus'), fontsize=14, padding=5),
    separator(),
]

# Widgets primarios
primary_widgets = [
    *workspaces(),

    separator(),

    powerline('color3', 'dark'),

    #icon(bg="color4", text=''),
    
    #widget.Pacman(**base(bg='color4'), execute = "pamac-manager", update_interval = 900),

    #powerline('color3', 'color4'),

    icon(bg="color3", text=network['icon']),
    
    widget.Net(**base(bg='color3'), interface=network['interface'], format= '{down}   {up}'),

    powerline('color1', 'color3'),

    icon(bg="color1", fontsize=17, text=''), 

    widget.Clock(**base(bg='color1'), format='%d/%m/%Y - %H:%M '),

    powerline('color2', 'color1'),

    widget.CurrentLayoutIcon(**base(bg='color2'), scale=0.65),

    widget.CurrentLayout(**base(bg='color2'), padding=5),

    powerline('dark', 'color2'),

    widget.Systray(background=colors['dark'], padding=5),

]

secondary_widgets = [
    *workspaces(),

    separator(),

    powerline('color1', 'dark'),

    icon(bg="color1", fontsize=17, text=''), 

    widget.Clock(**base(bg='color1'), format='%d/%m/%Y - %H:%M '),

    powerline('color2', 'color1'), 

    widget.CurrentLayoutIcon(**base(bg='color2'), scale=0.65),

    widget.CurrentLayout(**base(bg='color2'), padding=5),
]

widget_defaults = {
    'font': 'UbuntuMono Nerd Font',
    'fontsize': 12,
    'padding': 1,
}
extension_defaults = widget_defaults.copy()
