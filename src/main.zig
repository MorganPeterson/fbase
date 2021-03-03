const std = @import("std");
const builtin = @import("builtin");
const c = @cImport({
    @cInclude("lauxlib.h");
    @cInclude("lua.h");
    @cInclude("luaconf.h");
    @cInclude("lualib.h");
});

export fn add(s: ?*c.lua_State) c_int {
    var a = c.luaL_checkinteger(s, 1);
    var b = c.luaL_checkinteger(s, 2);

    const d = a + b;

    c.lua_pushinteger(s, d);
    return 1;
}

pub fn main() void {
    var s = c.luaL_newstate();
    c.luaL_openlibs(s);

    // TODO translate-c: lua_pushcfunction
    c.lua_pushcclosure(s, add, 0);
    c.lua_setglobal(s, "zig_add");

    // TODO translate-c: luaL_dostring
    _ = c.luaL_loadstring(s, "print(zig_add(3, 5))");

    // TODO translate-c: lua_pcall
    _ = c.lua_pcallk(s, 0, c.LUA_MULTRET, 0, 0, null);
}
