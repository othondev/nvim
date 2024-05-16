local Config = {}

Config.mappings = {
  n = {
    ['<A-1>'] = { cmd = ':Neotree git_status right toggle', desc = 'Open changes files explore' },
    ['<A-2>'] = { cmd = ':Neotree right toggle buffers', desc = 'Open Buffers List' },
    ['-'] = { cmd = '<CMD>Oil<CR>', desc = 'Open parent directory' },
    ['<C-b>'] = { cmd = ':Neotree right toggle buffers', desc = 'Open Buffers List' },
    ['<C-f>'] = { cmd = ':Telescope live_grep', desc = 'Search git files' },
    ['<C-p>'] = { cmd = ':Telescope find_files', desc = 'Search git files' },
    ['<ESC>'] = { cmd = '<ESC>:nohlsearch', desc = 'Remove search text select' },
    ['<TAB>'] = { cmd = ':Telescope buffers' },
    ['<leader>/'] = { cmd = ':lua Search.OpenFiles()', desc = '[S]earch [/] in Open Files' },
    ['<leader>;'] = { cmd = ':Telescope commands', desc = 'Search Commands' },
    ['<leader><Space>'] = { cmd = ':Telescope resume', desc = 'Telescope Resume' },
    ['<leader>a'] = { cmd = ':lua vim.lsp.buf.code_action()', desc = 'Code Actions' },
    ['<leader>fh'] = { cmd = ':DiffviewFileHistory %', desc = 'Current File [H]istory' },
    ['<leader>gg'] = { cmd = ':Git', desc = '[G]it Status' },
    ['<leader>gl'] = { cmd = ':DiffviewFileHistory', desc = '[G]it [L]og' },
    ['<leader>sc'] = { cmd = ':Changes', desc = '[S]earch on [C]hanges' },
    ['<leader>sg'] = { cmd = ':Telescope live_grep', desc = 'Search with live grep' },
    ['<leader>sn'] = { cmd = ':lua Search.NvimFiles()', desc = '[S]earch [N]eovim files' },
    ['[['] = { cmd = ':lua vim.diagnostic.goto_prev()', desc = 'Previous error' },
    ['\\'] = { cmd = ':Neotree git_status right toggle', desc = 'Open changes files explore' },
    [']]'] = { cmd = ':lua vim.diagnostic.goto_next()', desc = 'Next error' },
  },
  v = {
    ['<C-f>'] = { cmd = ':Telescope grep_string', desc = '[S]earch selected text' },
    ['<leader>fh'] = { cmd = ':DiffviewFileHistory', desc = 'Selection [H]istory' },
  },
}

for mode, mode_mappings in pairs(Config.mappings) do
  for key, mapping in pairs(mode_mappings) do
    vim.api.nvim_set_keymap(mode, key, mapping.cmd .. '<cr>', { noremap = true, silent = true, desc = mapping.desc })
  end
end
