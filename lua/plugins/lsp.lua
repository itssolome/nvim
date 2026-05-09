local ok, mason = pcall(require, "mason")
if not ok then
	return
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

-- Configuración de Mason
mason.setup({
	ui = {
		icons = {
			server_installed = "✓",
			server_pending = "➜",
			server_uninstalled = "✗",
		},
	},
})

local servers = {
	"bashls",
	"cssls",
	"eslint",
	"html",
	"htmx",
	"intelephense",
	"lua_ls",
	"tailwindcss",
	"ts_ls",
}

-- Asegúrate de que mason-lspconfig instale los servidores
require("mason-lspconfig").setup({
	ensure_installed = servers,
	automatic_installation = true,
})

-- Configuración de los servidores LSP usando vim.lsp.config()
for _, server in ipairs(servers) do
	-- Verifica si el servidor está disponible antes de configurarlo
	local ok, config = pcall(vim.lsp.config[server])
	if ok then
		config.setup({
			capabilities = capabilities,
		})
	end
end

-- Configuración de mason-tool-installer
local toInstall = {
	"firefox-debug-adapter",
	"php-debug-adapter",
	"termux-language-server",
	"phpcs",
	"prettier",
	"prettierd",
	"shellcheck",
	"shfmt",
	"stylelint",
	"stylua",
}
require("mason-tool-installer").setup({
	ensure_installed = toInstall,
	auto_update = false,
	run_on_start = true,
})

