-- require('rose-pine').setup({
--     disable_background = true
-- })

-- function ColorMyPencils(color) 
-- 	color = color or "rose-pine"
-- 	vim.cmd.colorscheme(color)

-- 	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- 	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

-- end

-- ColorMyPencils()

require('ayu').setup({
    overrides = {
        -- Normal = { bg = "None" },
        -- ColorColumn = { bg = "None" },
        -- SignColumn = { bg = "None" },
        -- Folded = { bg = "None" },
        -- FoldColumn = { bg = "None" },
        -- CursorLine = { bg = "None" },
        -- CursorColumn = { bg = "None" },
        -- WhichKeyFloat = { bg = "None" },
        -- VertSplit = { bg = "None" },
    },
})

-- require('rose-pine').setup({
--     disable_background = true
-- })
