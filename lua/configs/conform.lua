local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    go = { "gofmt", "goimports" },
    python = { "autopep8" },
    -- css = { "prettier" },
    -- html = { "prettier" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
