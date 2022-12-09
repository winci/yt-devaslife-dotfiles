local status, neogit = pcall(require, "neogit")
if (not status) then return end

local s, _ = pcall(require, "diffview")
if (not s) then
  print("diffview is not installed.")
end

neogit.setup {
  disable_commit_confirmation = true,
  integrations = {
    diffview = true
  }
}

local opts = { silent = true }
vim.keymap.set('n', '<Space>gg', '<Cmd>:Neogit<CR>', opts)
vim.keymap.set('n', 'gd', '<Cmd>:DiffviewOpen<CR>', opts)
vim.keymap.set('n', 'gc', '<Cmd>:Neogit commit<CR>', opts)
vim.keymap.set('n', 'gl', '<Cmd>:Neogit log<CR>', opts)
vim.keymap.set('n', 'gp', '<Cmd>:Neogit push<CR>', opts)
