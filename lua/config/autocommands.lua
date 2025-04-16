-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`

-- vim. why do i have to do this. all of this just to check if the commandbar is focused.
local focused = false

vim.api.nvim_create_autocmd("CmdlineEnter", {
  desc = "Autocommand that tracks if the command line is focused",
  group = vim.api.nvim_create_augroup("cmdline-focus-gained", { clear = true }),
  callback = function()
    focused = true
  end,
})

vim.api.nvim_create_autocmd("CmdlineLeave", {
  desc = "Autocommand that tracks if the command line is focused",
  group = vim.api.nvim_create_augroup("cmdline-focus-lost", { clear = true }),
  callback = function()
    focused = false
  end,
})

vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.api.nvim_create_autocmd("CmdlineLeave", {
  desc = "Clear the command bar after some inactivity occurs",
  group = vim.api.nvim_create_augroup("commandline-clear", { clear = true }),
  -- very messy, but it works
  callback = function()
    vim.defer_fn(function()
      if not focused then
        vim.cmd('echom ""')
      end
    end, 2000)
  end,
})
