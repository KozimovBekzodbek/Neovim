function ColorMyPencils(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

    -- For the main editor area
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" }) 
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

    -- For the NvimTree area
    vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NvimTreeEndOfBuffer", { bg = "none" })
    vim.api.nvim_set_hl(0, "NvimTreeVertSplit", { bg = "none" })

    -- For the whole UI experience
    vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
    vim.api.nvim_set_hl(0, "VertSplit", { bg = "none" })

    vim.cmd([[highlight NvimTreeNormal guibg=NONE ctermbg=NONE]])
    vim.cmd([[highlight NvimTreeEndOfBuffer guibg=NONE ctermbg=NONE]])

    -- ~ Remove this icon
    vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = "none" }) -- Hides the tilde (~) symbols

end

ColorMyPencils()

	
