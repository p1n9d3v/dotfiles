return {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {

        open_mapping = [[<c-\>]],
        direction = "float", --'vertical' | 'horizontal' | 'tab' | 'float'
        float_opts = {
            -- The border key is *almost* the same as 'nvim_open_win'
            -- see :h nvim_open_win for details on borders however
            -- the 'curved' border is a custom border type
            -- not natively supported but implemented in this plugin.
            border = "curved", --curved, 'single', 'double', 'shadow', 'curved'
            title_pos = "center",
        },
        -- 터미널 상단에 번호를 표시해줍니다.
        shade_terminals = true,
        persist_size = true,
        start_in_insert = true,
        -- 터미널 창 이름에 ID 번호를 포함시킴
        display_name = function(term)
            return "Terminal #" .. term.id
        end,
    },
}
