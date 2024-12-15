-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.api.nvim_create_autocmd("CmdlineLeave", {
  desc = "Clear the command bar after some inactivity occurs.",
  group = vim.api.nvim_create_augroup("commandline-clear", { clear = true }),
  -- very messy, but it works
  callback = function()
    vim.defer_fn(function()
      vim.cmd('echom ""')
    end, 2000)
  end,
})
