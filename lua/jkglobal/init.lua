
---@diagnostic disable: deprecated

local J = {}

---@class JKGlobal
_G.jk = {}

jk.vs = vim.fn.exists'vscode' ---@type boolean

_G.tb = {}
           tb.foreachi = table.foreachi
            tb.foreach = table.foreach
             tb.concat = table.concat
             tb.insert = table.insert
             tb.remove = table.remove
               tb.getn = table.getn
               tb.maxn = table.maxn
               tb.move = table.move
               tb.sort = table.sort
                tb.get = vim.tbl_get
                tb.map = vim.tbl_map
               tb.keys = vim.tbl_keys
              tb.count = vim.tbl_count
             tb.values = vim.tbl_values
             tb.filter = vim.tbl_filter
             tb.islist = vim.tbl_islist
             tb.extend = vim.tbl_extend
            tb.isempty = vim.tbl_isempty
            tb.flatten = vim.tbl_flatten
           tb.contains = vim.tbl_contains
        tb.deep_extend = vim.tbl_deep_extend
 tb.add_reverse_lookup = vim.tbl_add_reverse_lookup

 return J