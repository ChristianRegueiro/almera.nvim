local highlights = require("almera.highlights")

vim.cmd("highlight clear")
vim.cmd("syntax reset")
vim.g.colors_name = "almera"

highlights.setup()
