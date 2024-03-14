return {
  -- add gruvbox
  --{ "sainnhe/gruvbox-material" },
  { "xero/miasma.nvim" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "miasma",
    },
  },
}
