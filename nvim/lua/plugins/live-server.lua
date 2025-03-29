return {
	'barrett-ruth/live-server.nvim',
	build = 'pnpm add -g live-server',
	cmd = { 'LiveServerStart', 'LiveServerStop' },
	config = function ()
		require("live-server").setup {
			args = { '--port=5173' }
		}
	end
}
