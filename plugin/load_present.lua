vim.api.nvim_create_user_command("PresentStart", function()
    -- this will lazy load your plugin
    require("present").start_presentation()
end, {})
