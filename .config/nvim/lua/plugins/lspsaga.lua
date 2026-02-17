return {
    "nvimdev/lspsaga.nvim",
    enabled = false,
    config = function()
        require("lspsaga").setup({

            lightbulb = {
                enable = false, -- 전구 아이콘 자체를 비활성화
                sign = false, -- 왼쪽 여백(sign column) 표시 여부
                virtual_text = false, -- 코드 옆에 텍스트로 띄우는 기능 여부
            },
            -- 기타 UI 설정 (이미 사용 중이신 코드)
            ui = {
                code_action = "", -- 필요하다면 아이콘을 빈 값으로 설정
            },
        })
    end,
    dependencies = {
        "nvim-treesitter/nvim-treesitter", -- optional
        "nvim-tree/nvim-web-devicons", -- optional
    },
}
