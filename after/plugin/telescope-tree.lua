require('lualine').setup({})
require('telescope').load_extension "file_browser"

vim.api.nvim_set_keymap(
  "n",
  "<space>fa",
  ":Telescope file_browser<CR>",
  { noremap = true }
)

-- open file_browser with the path of the current buffer
vim.api.nvim_set_keymap(
  "n",
  "<space>F",
  ":Telescope file_browser path=%:p:h select_buffer=true<CR>",
  { noremap = true }
)

require "telescope".setup {
  extensions = {
    mappings = {
      i = { 
        ["<leader>fr"] = function(prompt_bufnr)
          local git_root_path =
            require("plenary.job"):new({ command = "git", args = { "rev-parse", "--show-toplevel" } }):sync()[1]
          local current_picker = require("telescope.actions.state").get_current_picker(prompt_bufnr)
          local finder = current_picker.finder
          if finder.files then
            finder.path = git_root_path
          else
            finder.cwd = git_root_path
          end
          require("telescope._extensions.file_browser.utils").redraw_border_title(current_picker)
          current_picker:refresh(finder, { reset_prompt = true, multi = current_picker._multi })
        end
      }
    }
  }
}
