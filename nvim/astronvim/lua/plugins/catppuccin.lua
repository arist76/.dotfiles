return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  setup =  function()
    require("catppuccin").setup()
  end,
}
