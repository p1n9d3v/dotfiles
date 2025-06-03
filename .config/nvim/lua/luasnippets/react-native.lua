local ls = require("luasnip")
-- some shorthands...
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local l = require("luasnip.extras").lambda
local rep = require("luasnip.extras").rep
local p = require("luasnip.extras").partial
local m = require("luasnip.extras").match
local n = require("luasnip.extras").nonempty
local dl = require("luasnip.extras").dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local types = require("luasnip.util.types")
local conds = require("luasnip.extras.expand_conditions")

ls.add_snippets("typescriptreact", {
    s("rncomp", {
        -- Import statement
        t('import { StyleSheet, View } from "react-native";'),
        t({ "", "" }),

        -- Interface definition
        t("interface "),
        i(1, "ComponentName"),
        t("Props {"),
        t({ "", "    " }),
        i(2, "// props here"),
        t({ "", "}" }),
        t({ "", "" }),

        -- Component function
        t("export default function "),
        rep(1),
        t("(props: "),
        rep(1),
        t("Props) {"),
        t({ "", "    const { " }),
        i(3),
        t(" } = props;"),
        t({ "", "    return <View>" }),
        i(4),
        t("</View>;"),
        t({ "", "}" }),
        t({ "", "" }),

        -- Styles
        t("const styles = StyleSheet.create({"),
        i(5),
        t("});"),
    }),
})
