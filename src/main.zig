const std = @import("std");
const fs = std.fs;
const warn = std.debug.warn;
const builtin = @import("builtin");
const c = @cImport({
    @cInclude("lua.h");
    @cInclude("lualib.h");
    @cInclude("lauxlib.h");
});

export fn add(s: ?*c.lua_State) c_int {
    var a = c.luaL_checkinteger(s, 1);
    var b = c.luaL_checkinteger(s, 2);

    const d = a + b;

    c.lua_pushinteger(s, d);
    return 1;
}

pub fn main() !void {
    var s = c.luaL_newstate();
    c.luaL_openlibs(s);

    // TODO translate-c: lua_pushcfunction
    c.lua_pushcclosure(s, add, 0);
    c.lua_setglobal(s, "zig_add");

    var filename = "load_scripts.lua";

    // TODO translate-c: luaL_dostring
    var err1 = (c.luaL_loadfilex(s, filename, null) != c.LUA_OK) or (c.lua_pcallk(s, 0, c.LUA_MULTRET, 0, 0, null) != c.LUA_OK);
    if (err1) {
        var crap = c.lua_tolstring(s, -1, null);
        warn("error {s}\n", .{crap});
    }

    // TODO translate-c: luaL_dostring
    var err2 = (c.luaL_loadstring(s, "cal(1976)") != c.LUA_OK) or (c.lua_pcallk(s, 0, c.LUA_MULTRET, 0, 0, null) != c.LUA_OK);
    if (err2) {
        var crap = c.lua_tolstring(s, -1, null);
        warn("second load string: {s}\n", .{crap});
    }

    c.lua_close(s);
}
