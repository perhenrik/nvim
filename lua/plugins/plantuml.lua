return {
    -- plantuml syntax
    {
        "aklt/plantuml-syntax",
        ft = { "puml", "plantuml", "markdown" },
    },

    -- plantuml preview in browser
    {
        "weirongxu/plantuml-previewer.vim",
        ft = { "puml", "plantuml" },
        dependencies = { "tyru/open-browser.vim" },
        cmd = {
            "PlantumlToggle",
            "PlantumlOpen",
            "PlantumlStart",
            "PlantumlStop",
            "PlantumlSave",
        },
        init = function()
            vim.g["plantuml_previewer#plantuml_jar_path"] = (vim.env.XDG_LIB_HOME or vim.env.HOME .. "/.config")
                .. "/java/plantuml.jar"
            -- stylua: ignore
            --     require("utils").on_ft("plantuml", function(event)
            --       vim.keymap.set("n", "<leader>cp", "<cmd>PlantumlToggle<cr>", { desc = "Live Preview (Plantuml)", buffer = event.buf })
            --     end)
        end,
    },
}
