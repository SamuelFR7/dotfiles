function ColorMyPencils(color)
	color = color or 'nord'
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
    {
        "shaunsingh/nord.nvim",
        name = "nord",
        config = function()
            vim.g.nord_italic = false
            vim.g.nord_disable_background = true
            vim.g.nord_bold = false
            ColorMyPencils()
        end
    },
}

