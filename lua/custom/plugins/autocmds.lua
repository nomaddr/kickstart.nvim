-- autocmds.lua

-- Automatically set up indentation for C/C++ files
vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'c', 'cpp' },
  callback = function()
    vim.bo.expandtab = true -- Use spaces instead of tabs
    vim.bo.shiftwidth = 4 -- Number of spaces for each indentation level
    vim.bo.tabstop = 4 -- Number of spaces that a <Tab> in the file counts for
    vim.bo.softtabstop = 4 -- Number of spaces inserted/deleted when hitting <Tab>/<BS>
    vim.bo.smartindent = true -- Enable smart indentation
  end,
})
