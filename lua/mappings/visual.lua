return {
  ["<C-f>"] = {
    cmd = "y<ESC>:Telescope live_grep default_text=<c-r>0",
    desc = "[S]earch selected text",
  },
  ["<leader>fh"] = { cmd = ":DiffviewFileHistory", desc = "Selection [H]istory" },
}
