return {
	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		ft = { "markdown" },
		build = "cd app && npm install", -- Użyj npm do instalacji zależności
		config = function()
			vim.g.mkdp_auto_start = 0
			vim.g.mkdp_auto_close = 1
			vim.g.mkdp_refresh_slow = 0
			vim.g.mkdp_theme = "dark"
			vim.g.mkdp_browser = "firefox" -- Możesz zmienić na "chromium" lub inną przeglądarkę
			vim.g.mkdp_preview_options = {
				sync_scroll_type = "middle",
				hide_yaml_meta = 1,
				disable_sync_scroll = 0,
			}
			vim.keymap.set("n", "<leader>mp", ":MarkdownPreviewToggle<CR>", { noremap = true, silent = true })
		end,
	},
}
