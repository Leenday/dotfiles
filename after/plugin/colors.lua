require('rose-pine').setup({
    variant = 'moon',
    dark_variant = 'dawn',
})
function ColorMyPencils(color)
    color = color or 'rose-pine'
    vim.cmd.colorscheme(color)

    --for the transparent background
    --vim.api.nvim_set_hl(0, 'Normal', { bg = "none" })
    vim.api.nvim_set_hl(0, 'NormalFloat', { bg = "none" })
end

ColorMyPencils()
