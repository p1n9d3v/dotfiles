return {
    "folke/sidekick.nvim",
    opts = {
        nes = {
            enabled = false,
        },
    },
    -- opts = function()
    --     -- Accept inline suggestions or next edits
    --     LazyVim.cmp.actions.ai_nes = function()
    --         local Nes = require("sidekick.nes")
    --         if Nes.have() and (Nes.jump() or Nes.apply()) then
    --             return true
    --         end
    --     end
    --     Snacks.toggle({
    --         name = "Sidekick NES",
    --         get = function()
    --             return require("sidekick.nes").enabled
    --         end,
    --         set = function(state)
    --             require("sidekick.nes").enable(state)
    --         end,
    --     }):map("<leader>uN")
    -- end,
}
