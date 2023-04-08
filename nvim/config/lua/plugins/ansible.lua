-- add ansiblels to lspconfig
return {
  "neovim/nvim-lspconfig",
  ---@class PluginLspOpts
  opts = {
    autoformat = true,
    ---@type lspconfig.options
    servers = {
      -- ansiblels will be automatically installed with mason and loaded with lspconfig
      ansiblels = {},
    },
  },
}
