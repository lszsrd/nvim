return
{
    "gelguy/wilder.nvim",

    config = function()
        local wilder = require('wilder')

        wilder.setup({modes = {':', '/', '?'}})
        wilder.set_option('renderer', wilder.popupmenu_renderer(
            wilder.popupmenu_border_theme({
                highlights = {
                    accent = wilder.make_hl('WilderAccent', 'Pmenu', {{a = 1}, {a = 1}, {foreground = '#f4468f'}}),
                },
                highlighter = wilder.basic_highlighter(),
                left = {' ', wilder.popupmenu_devicons()},
                border = 'rounded',
            })
        ))

    end,
}
