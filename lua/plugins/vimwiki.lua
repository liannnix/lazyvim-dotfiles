return {
  {
    "vimwiki/vimwiki",
    keys = {
      { "<leader>WW", "<Plug>VimwikiIndex", desc = "VimwikiIndex" },
      { "<leader>WT", "<Plug>VimwikiTabIndex", desc = "VimwikiTabIndex" },
      { "<leader>WI", "<Plug>VimwikiDiaryIndex", desc = "VimwikiDiaryIndex" },
    },
    init = function()
      vim.g.vimwiki_list = {
        {
          path = "~/vimwiki/",
          syntax = "markdown",
          ext = "md",
        },
      }
      vim.g.vimwiki_global_ext = 0
      vim.g.list_margin = 0
      vim.api.nvim_create_autocmd("FileType", {
        pattern = "vimwiki",
        callback = function()
          vim.opt_local.shiftwidth = 2
          vim.opt_local.tabstop = 2
          vim.opt_local.softtabstop = 2
          vim.opt_local.expandtab = true
        end,
      })
    end,
  },
}
