return {
  "mistricky/codesnap.nvim",
  build = "make",
  setup = function()
    require("codesnap").setup({
      has_breadcrumbs = true,
    })
  end,
}
