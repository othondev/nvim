local Config = {}

Config.mappings = {
  n = {
    ['<C-b>'] = { cmd = ':Neotree right toggle buffers', desc = 'Open Buffers List' },
    ['<C-f>'] = { cmd = ':Telescope grep_string', desc = 'Search git files' },
    ['<C-p>'] = { cmd = ':GFiles', desc = 'Search git files' },
    ['<ESC>'] = { cmd = '<ESC>:nohlsearch', desc = 'Remove search text select' },
    ['<TAB>'] = { cmd = ':Telescope buffers' },
    ['<leader>/'] = { cmd = ':lua Search.OpenFiles()', desc = '[S]earch [/] in Open Files' },
    ['<leader><Space>'] = { cmd = ':Telescope keymaps', desc = 'Telescope keymaps' },
    ['<leader>a'] = { cmd = ':lua vim.lsp.buf.code_action()', desc = 'Code Actions' },
    ['<leader>g'] = { cmd = ':Git', desc = '[G]it list log' },
    ['<leader>h'] = { cmd = ':BCommits', desc = 'Current File [H]istory' },
    ['<leader>l'] = { cmd = ':GlLog', desc = '[G]it list log' },
    ['<leader>sc'] = { cmd = ':Changes', desc = '[S]earch on [C]hanges' },
    ['<leader>sg'] = { cmd = ':Telescope live_grep', desc = 'Search with live grep' },
    ['<leader>sn'] = { cmd = ':lua Search.NvimFiles()', desc = '[S]earch [N]eovim files' },
    ['[['] = { cmd = ':lua vim.diagnostic.goto_prev()', desc = 'Previous error' },
    ['\\'] = { cmd = ':Neotree toggle float dir=./ reveal_force_cwd', desc = 'Open float file explore' },
    [']]'] = { cmd = ':lua vim.diagnostic.goto_next()', desc = 'Next error' },
  },
  v = {
    ['<C-f>'] = { cmd = ':Telescope grep_string', desc = '[S]earch selected text' },
    ['<leader>h'] = { cmd = ':BCommits', desc = 'Selection [H]istory' },
  },
}

for mode, mode_mappings in pairs(Config.mappings) do
  for key, mapping in pairs(mode_mappings) do
    vim.api.nvim_set_keymap(mode, key, mapping.cmd .. '<cr>', { noremap = true, silent = true, desc = mapping.desc })
  end
end