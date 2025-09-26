return
{
    "b3nj5m1n/kommentary",

    config = function ()
        local kommentary = require('kommentary.config')

        kommentary.configure_language("default", {
            single_line_comment_string = "//",
            multi_line_comment_strings = {"/*", "*/"},
        })

        kommentary.configure_language("python", {
            single_line_comment_string = "#",
            multi_line_comment_strings = {"'''", "'''"},
        })

        kommentary.use_extended_mappings()
    end
}
