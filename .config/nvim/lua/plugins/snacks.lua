return {
    "folke/snacks.nvim",
    opts = {
        zen = {
            win = {
                width = 0.5,
            },
        },

        scroll = { enabled = false },

        picker = {
            win = {
                list = {
                    keys = {
                        ["ss"] = "edit_split",
                        ["sv"] = "edit_vsplit",
                    },
                },
            },
            sources = {
                files = { hidden = true },
                explorer = {
                    win = {
                        list = {
                            wo = {
                                relativenumber = true,
                            },
                        },
                    },
                },
            },
        },
        dashboard = {
            width = 90,
            preset = {
                header = [[
                                                                   
      ████ ██████           █████      ██                p1n9 
     ███████████             █████                            
     █████████ ███████████████████ ███   ███████████  
    █████████  ███    █████████████ █████ ██████████████  
   █████████ ██████████ █████████ █████ █████ ████ █████  
 ███████████ ███    ███ █████████ █████ █████ ████ █████ 
██████  █████████████████████ ████ █████ █████ ████ ██████
]],
            },

            sections = {
                { section = "header" },
                {
                    pane = 2,
                    section = "terminal",
                    cmd = "colorscript -e square",
                    height = 5,
                    padding = 1,
                },
                { section = "keys", gap = 1, padding = 1 },
                {
                    pane = 2,
                    icon = " ",
                    desc = "Browse Repo",
                    padding = 1,
                    key = "b",
                    action = function()
                        Snacks.gitbrowse()
                    end,
                },
                -- function()
                --     local in_git = Snacks.git.get_root() ~= nil
                -- local cmds = {
                --     {
                --         title = "Notifications",
                --         cmd = "gh notify -s -a -n5", -- #gh ext install meiji163/gh-notify
                --         action = function()
                --             vim.ui.open("https://github.com/notifications")
                --         end,
                --         key = "n",
                --         icon = " ",
                --         height = 5,
                --         enabled = true,
                --     },
                --     {
                --         title = "Open Issues",
                --         cmd = "gh issue list -L 3",
                --         key = "i",
                --         action = function()
                --             vim.fn.jobstart("gh issue list --web", { detach = true })
                --         end,
                --         icon = " ",
                --         height = 7,
                --     },
                --     {
                --         icon = " ",
                --         title = "Open PRs",
                --         cmd = "gh pr list -L 3",
                --         key = "P",
                --         action = function()
                --             vim.fn.jobstart("gh pr list --web", { detach = true })
                --         end,
                --         height = 7,
                --     },
                --     {
                --         icon = " ",
                --         title = "Git Status",
                --         cmd = "git --no-pager diff --stat -B -M -C",
                --         height = 10,
                --     },
                -- }
                -- return vim.tbl_map(function(cmd)
                --     return vim.tbl_extend("force", {
                --         pane = 2,
                --         section = "terminal",
                --         enabled = in_git,
                --         padding = 1,
                --         ttl = 5 * 60,
                --         indent = 3,
                --     }, cmd)
                -- end, cmds)
                -- end,
                { section = "startup" },
            },
        },
    },
    keys = {
        {
            "<leader>e",
            function()
                local current_dir = vim.fn.getcwd()

                Snacks.explorer({
                    cwd = vim.fn.expand("%:p:h"),
                })
            end,
            desc = "File Explorer",
        },
        {
            "<leader>E",
            function()
                -- 찾고자 하는 프로젝트 루트 마커들
                local root_markers = { ".git", "init.lua" }

                -- 현재 열린 파일의 디렉토리
                local current_file_dir = vim.fn.expand("%:p:h")

                -- 현재 디렉토리부터 상위로 올라가며 마커를 찾습니다.
                -- vim.fs.find는 찾은 마커 파일의 *전체 경로*를 반환합니다.
                local found_marker_path = vim.fs.find(root_markers, { path = current_file_dir, upward = true })[1]

                if found_marker_path then
                    -- 찾은 마커가 포함된 디렉토리(즉, 프로젝트 루트)를 가져옵니다.
                    local project_root = vim.fn.fnamemodify(found_marker_path, ":h")
                    Snacks.explorer({ cwd = project_root })
                else
                    print("프로젝트 루트 마커를 찾지 못했습니다.")
                end
            end,
        },
    },
}
