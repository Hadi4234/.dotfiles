-- vim.cmd [[
-- try
--   colorscheme darkplus
-- catch /^Vim\%((\a\+)\)\=:E185/
--   colorscheme default
--   set background=dark
-- endtry
-- ]]
----theme config
require("github-theme").setup({
        theme_style = "dark",
        transparent =false,
        comment_style = "italic",
        keyword_style = "italic",
        function_style = "italic",
        variable_style = "italic",
        dark_sidebar = false,
 })

