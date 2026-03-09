return
{
    "numToStr/FTerm.nvim",

    config = function ()
        require("FTerm").setup({
            border = "single",
            dimensions  = {
                height = 0.8,
                width = 0.8,
            },
            blend = 20
        })
    end
}
