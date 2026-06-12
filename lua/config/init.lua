require('config.options')
require('config.autocmds')
require('config.keymaps')
require('config.diagnostics')

function R(name)
    require("plenary.reload").reload_module(name)
end
