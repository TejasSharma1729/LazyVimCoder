return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        suggestion = { enabled = true },
        panel = { enabled = true },
      })
    end,
  },
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    enabled = true,
    branch = "main",
    dependencies = {
      { "zbirenbaum/copilot.lua" },
      { "nvim-lua/plenary.nvim" },
    },
    opts = {
      debug = false,
    },
    keys = {
      { "<leader>cc", ":CopilotChatToggle<CR>", desc = "CopilotChat - Toggle" },
    },
  },
  {
    "amitds1997/remote-nvim.nvim",
    version = "*", -- Use the latest release
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-telescope/telescope.nvim",
      "rcarriga/nvim-notify",
      "stevearc/dressing.nvim",
    },
    config = true, -- Automatically runs setup()
  },
  {
    "jonroosevelt/gemini-cli.nvim",
    config = function()
      require("gemini").setup({
        split_direction = "horizontal", -- optional: "vertical" (default) or "horizontal"
      })
    end,
  },
  {
    "kmontocam/nvim-conda",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
}
