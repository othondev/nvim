vim.cmd("colorscheme rose-pine")

require('lualine').setup {
    options = {
        theme = 'auto',
    },
    sections = {
        lualine_a = {},
        lualine_b = { 'branch', 'diff' },
        lualine_c = {},
        lualine_x = { 'filetype' },
        lualine_y = {},
        lualine_z = {}
    },
}

require('bufferline').setup {
    options = {
        diagnostics = "nvim_lsp",
        diagnostics_indicator = function(count, level)
            local icon = level:match("error") and " " or " "
            return " " .. icon .. count
        end
    }
}
