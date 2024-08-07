local install_path = vim.fn.stdpath("data") .. "/mason/packages/angular-language-server/node_modules"
local ang = install_path .. "/@angular/language-server/node_modules"
local angular_cmd = { "ngserver", "--stdio", "--tsProbeLocations", install_path, "--ngProbeLocations", ang }
local util = require("lspconfig.util")

local capabilities = require("cmp_nvim_lsp").default_capabilities()

return {
  "neovim/nvim-lspconfig",
  ---@class PluginLspOpts
  opts = {
    capabilities = capabilities,
    ---@type lspconfig.options
    servers = {
      stylelint_lsp = {
        filetypes = { "scss" },
      },
      tailwindcss = {
        filetypes = { "scss", "html" },
      },
      angularls = {

        cmd = angular_cmd, -- Команда для запуска Angular Language Server
        root_dir = util.root_pattern("package.json"), -- Корневая директория проекта
        on_new_config = function(new_config, new_root_dir)
          new_config.cmd = angular_cmd -- Обновление конфигурации команды при изменении
        end,
      },
      html = {},
      emmet_ls = {
        filetypes = { "html" },
      },
    },
  },
}
