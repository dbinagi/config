local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Toggle Fullscreen
local function toggle_fullscreen()
    local enable = vim.g.GuiWindowFullScreen == 1 and 0 or 1
    return "<cmd>call GuiWindowFullScreen(" .. enable .. ")<CR>"
end

------------------------------
--         custom           --
------------------------------

vim.keymap.set('n', '<f11>', toggle_fullscreen, { noremap = true, silent = true, expr = true })

------------------------------
--        cosmic-ui         --
------------------------------

map('n', '<leader>ga', '<cmd>lua require("cosmic-ui").code_actions()<cr>', opts)
map('v', '<leader>ga', '<cmd>lua require("cosmic-ui").range_code_actions()<cr>', opts)
map('n', '<leader>gn', '<cmd>lua require("cosmic-ui").rename()<cr>', opts)

------------------------------
--         barbar           --
------------------------------

-- Move to previous/next
map('n', '<leader>,', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<leader>.', '<Cmd>BufferNext<CR>', opts)
-- Re-order to previous/next
map('n', '<leader><', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<leader>>', '<Cmd>BufferMoveNext<CR>', opts)
-- Goto buffer in position...
map('n', '<leader>1', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<leader>2', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<leader>3', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<leader>4', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<leader>5', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<leader>6', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<leader>7', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<leader>8', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<leader>9', '<Cmd>BufferGoto 9<CR>', opts)
map('n', '<leader>0', '<Cmd>BufferLast<CR>', opts)
-- Pin/unpin buffer
map('n', '<leader>p', '<Cmd>BufferPin<CR>', opts)
-- Close buffer
map('n', '<leader>c', '<Cmd>BufferClose<CR>', opts)
map('n', '<Space>bc', '<Cmd>BufferCloseAllButCurrent<CR>', opts)
-- Sort automatically by...
map('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
map('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
map('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
map('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)

------------------------------
--        Telescope         --
------------------------------

map('n', '<leader>ff', "<cmd>lua require('telescope.builtin').find_files({layout_strategy='vertical'})<cr>", opts)
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', opts)
map('n', '<leader>fb', '<cmd>Telescope buffers<cr>', opts)
map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', opts)

map('n', '<leader>fp', '<cmd>Telescope projects<cr>', opts)
map('n', '<leader>fs', "<cmd>lua require('telescope.builtin').git_status()<cr>", opts)
map('n', '<leader>fl', "<cmd>lua require('telescope.builtin').lsp_definitions()<cr>", opts)

map('n', '<leader>tf', '<cmd>Telescope file_browser<cr>', opts)

------------------------------
--        which-key         --
------------------------------

map('n', '<leader>', "<cmd>WhichKey '<Space>'<CR>", opts)

local wk = require('whichkey_setup')
local keymap = {
    b = {name='Buffer'},
    f = {name='Files'},
    h = {name='Git'},
    t = {name='Telescope'}
}

wk.register_keymap('leader', keymap)
