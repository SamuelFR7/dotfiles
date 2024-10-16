function ColorMyPencils(color)
	color = color or 'everforest'
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
    {
        "neanias/everforest-nvim",
        name = "everforest",
        config = function()
            require('everforest').setup({
                transparent_background_level = 2,
                styles = {
                    italic = false,
                },
            })
	    ColorMyPencils()
        end
    },
}
