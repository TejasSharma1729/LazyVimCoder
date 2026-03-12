return {
  {
    "folke/noice.nvim",
    opts = {
      commands = {
        shell = {
          view = "split", -- Use the customized split for shell output
          filter = { event = "msg_show" },
          opts = { enter = true },
        },
      },
      routes = {
        {
          filter = {
            event = "msg_show",
            min_height = 2,
          },
          view = "split",
          opts = { enter = true },
        },
        -- Catch-all for single-line messages to 'notify'
        {
          filter = {
            event = "msg_show",
          },
          view = "notify",
        },
      },
      presets = {
        bottom_search = true, -- use a classic bottom cmdline for search
        command_palette = true, -- position the cmdline and popupmenu together
        long_message_to_split = false, -- Disable default split, let our height route handle it
        cmdline_output_to_split = false, -- send output of command-line commands to a split
        inc_rename = false, -- enables an input dialog for inc-rename.nvim
        lsp_doc_border = true, -- add a border to hover docs and signature help
      },
    },
  },
}
