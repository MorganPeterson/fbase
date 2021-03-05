const std = @import("std");
const fs = std.fs;
const warn = std.debug.warn;
const c = @cImport({
    @cInclude("lua.h");
    @cInclude("lualib.h");
    @cInclude("lauxlib.h");
});

fn doFile(s: ?*c.lua_State, f: *const [16:0]u8) bool {
    return (c.luaL_loadfilex(s, f, null) != c.LUA_OK or c.lua_pcallk(s, 0, c.LUA_MULTRET, 0, 0, null) != c.LUA_OK);
}

fn doString(s: ?*c.lua_State, f: *const [9:0]u8) bool {
    return (c.luaL_loadstring(s, "cal(1976)") != c.LUA_OK) or (c.lua_pcallk(s, 0, c.LUA_MULTRET, 0, 0, null) != c.LUA_OK);
}

pub fn main() !void {
    // load lua vm state
    var s = c.luaL_newstate();
    defer c.lua_close(s);

    // load lua libs into vm
    c.luaL_openlibs(s);

    // loads fennel init script
    var err = doFile(s, "load_scripts.lua");
    if (err) {
        var errMsg = c.lua_tolstring(s, -1, null);
        warn("doFile: {s}\n", .{errMsg});
    }

    // runs a user defined fennel function
    var err2 = doString(s, "cal(1976)");
    if (err2) {
        var errMsg2 = c.lua_tolstring(s, -1, null);
        warn("doString: {s}\n", .{errMsg2});
    }
}
