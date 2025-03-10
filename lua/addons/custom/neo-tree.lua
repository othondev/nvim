require("neo-tree").setup {
  sources = {
    "filesystem",
    "buffers",
    "git_status",
    "document_symbols",
  },
  source_selector = {
    winbar = true,
  },
}
