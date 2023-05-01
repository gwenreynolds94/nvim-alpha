local KV = {}


local kmap = vim.keymap.set

---@param _post_leader? string
---@param _default_mode? string | string[]
---@param _default_opts? table
---@return 
---| fun(_lhsuf: string, _rhs: string|function, _mode?: string|string[], _opts?: table)
function KV.leader_factory(_post_leader, _default_mode, _default_opts)
    _post_leader = _post_leader or [[]]
    _default_mode = _default_mode or { 'n' }
    _default_opts = _default_opts or {}
    return function(_lhsuf, _rhs, _mode, _opts)
        _mode = _mode or _default_mode
        _opts = _opts or _default_opts
        kmap(_mode, [[<leader>]].._post_leader.._lhsuf, _rhs, _opts)
    end
end

KV.leader_map = KV.leader_factory()
KV.window_map = KV.leader_factory("w")
KV.buffer_map = KV.leader_factory("b")

function KV:main()
    KV.leader_map([[noh]], [[<CMD>noh<CR>]])
end

function KV:init()
    self:main()
end

return KV