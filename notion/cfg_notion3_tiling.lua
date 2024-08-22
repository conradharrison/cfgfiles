--
-- Notion tiling module configuration file
--

-- Bindings for the tilings.
defbindings("WTiling", {
    bdoc("Split current into rows."),
    kpress(META.."S", "WTiling.split_at(_, _sub, 'bottom', true)"),

    bdoc("Split current into columns."),
    kpress(ALTMETA.."S", "WTiling.split_at(_, _sub, 'right', true)"),

    mclick(META.."Shift+Button4", "ioncore.goto_next(_sub, 'up', {no_ascend=_})"),
    mclick(META.."Shift+Button5", "ioncore.goto_next(_sub, 'down', {no_ascend=_})"),

    bdoc("Destroy current frame."),
    kpress(META.."X", "WTiling.unsplit_at(_, _sub)"),
})

-- Context menu for tiled workspaces.
defctxmenu("WTiling", "Tiling", {
    menuentry("Destroy frame",
              "WTiling.unsplit_at(_, _sub)"),

    menuentry("Into rows",
              "WTiling.split_at(_, _sub, 'bottom', true)"),
    menuentry("Into columns",
              "WTiling.split_at(_, _sub, 'right', true)"),

    menuentry("Flip", "WTiling.flip_at(_, _sub)"),
    menuentry("Transpose", "WTiling.transpose_at(_, _sub)"),

    menuentry("Untile", "mod_tiling.untile(_)"),

    submenu("Float split", {
        menuentry("At left",
                  "WTiling.set_floating_at(_, _sub, 'toggle', 'left')"),
        menuentry("At right",
                  "WTiling.set_floating_at(_, _sub, 'toggle', 'right')"),
        menuentry("Above",
                  "WTiling.set_floating_at(_, _sub, 'toggle', 'up')"),
        menuentry("Below",
                  "WTiling.set_floating_at(_, _sub, 'toggle', 'down')"),
    }),

    submenu("At root", {
        menuentry("Into rows",
                  "WTiling.split_top(_, 'bottom')"),
        menuentry("Into columns",
                  "WTiling.split_top(_, 'right')"),
        menuentry("Flip", "WTiling.flip_at(_)"),
        menuentry("Transpose", "WTiling.transpose_at(_)"),
    }),
})

-- Extra context menu extra entries for floatframes.
defctxmenu("WFrame.floating", "Floating frame", {
    append=true,
    menuentry("New tiling", "mod_tiling.mkbottom(_)"),
})
