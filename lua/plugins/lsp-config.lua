return{
	{
	"williamboman/mason.nvim",
	config = function()
		require("mason").setup()
	end
	},

	{
	"williamboman/mason-lspconfig.nvim",
	config = function()
	require("mason-lspconfig").setup({
		ensure_installed = { "lua_ls", "rust_analyzer", "gopls" },
	})
	end
	},

	{
	  "neovim/nvim-lspconfig",
	   config = function()
	   local lspconfig = require('lspconfig')
	   local capabilities = require('cmp_nvim_lsp').default_capabilities()
	   lspconfig.gopls.setup {
		capabilities = capabilities
	   }
 	   lspconfig.lua_ls.setup {
		capabilities = capabilities
	   }
	   vim.keymap.set('n','gd',vim.lsp.buf.definition,{})
    	   vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
	   end
	}
}
