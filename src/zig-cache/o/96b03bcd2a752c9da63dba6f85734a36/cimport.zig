pub usingnamespace @import("std").c.builtins;
pub const va_list = __builtin_va_list;
pub const __gnuc_va_list = __builtin_va_list;
pub const ptrdiff_t = c_long;
pub const wchar_t = c_int;
const struct_unnamed_1 = extern struct {
    __clang_max_align_nonce1: c_longlong align(8),
    __clang_max_align_nonce2: c_longdouble align(16),
};
pub const max_align_t = struct_unnamed_1;
pub const __u_char = u8;
pub const __u_short = c_ushort;
pub const __u_int = c_uint;
pub const __u_long = c_ulong;
pub const __int8_t = i8;
pub const __uint8_t = u8;
pub const __int16_t = c_short;
pub const __uint16_t = c_ushort;
pub const __int32_t = c_int;
pub const __uint32_t = c_uint;
pub const __int64_t = c_long;
pub const __uint64_t = c_ulong;
pub const __int_least8_t = __int8_t;
pub const __uint_least8_t = __uint8_t;
pub const __int_least16_t = __int16_t;
pub const __uint_least16_t = __uint16_t;
pub const __int_least32_t = __int32_t;
pub const __uint_least32_t = __uint32_t;
pub const __int_least64_t = __int64_t;
pub const __uint_least64_t = __uint64_t;
pub const __quad_t = c_long;
pub const __u_quad_t = c_ulong;
pub const __intmax_t = c_long;
pub const __uintmax_t = c_ulong;
pub const __dev_t = c_ulong;
pub const __uid_t = c_uint;
pub const __gid_t = c_uint;
pub const __ino_t = c_ulong;
pub const __ino64_t = c_ulong;
pub const __mode_t = c_uint;
pub const __nlink_t = c_ulong;
pub const __off_t = c_long;
pub const __off64_t = c_long;
pub const __pid_t = c_int;
const struct_unnamed_2 = extern struct {
    __val: [2]c_int,
};
pub const __fsid_t = struct_unnamed_2;
pub const __clock_t = c_long;
pub const __rlim_t = c_ulong;
pub const __rlim64_t = c_ulong;
pub const __id_t = c_uint;
pub const __time_t = c_long;
pub const __useconds_t = c_uint;
pub const __suseconds_t = c_long;
pub const __suseconds64_t = c_long;
pub const __daddr_t = c_int;
pub const __key_t = c_int;
pub const __clockid_t = c_int;
pub const __timer_t = ?*c_void;
pub const __blksize_t = c_long;
pub const __blkcnt_t = c_long;
pub const __blkcnt64_t = c_long;
pub const __fsblkcnt_t = c_ulong;
pub const __fsblkcnt64_t = c_ulong;
pub const __fsfilcnt_t = c_ulong;
pub const __fsfilcnt64_t = c_ulong;
pub const __fsword_t = c_long;
pub const __ssize_t = c_long;
pub const __syscall_slong_t = c_long;
pub const __syscall_ulong_t = c_ulong;
pub const __loff_t = __off64_t;
pub const __caddr_t = [*c]u8;
pub const __intptr_t = c_long;
pub const __socklen_t = c_uint;
pub const __sig_atomic_t = c_int;
pub const int_least8_t = __int_least8_t;
pub const int_least16_t = __int_least16_t;
pub const int_least32_t = __int_least32_t;
pub const int_least64_t = __int_least64_t;
pub const uint_least8_t = __uint_least8_t;
pub const uint_least16_t = __uint_least16_t;
pub const uint_least32_t = __uint_least32_t;
pub const uint_least64_t = __uint_least64_t;
pub const int_fast8_t = i8;
pub const int_fast16_t = c_long;
pub const int_fast32_t = c_long;
pub const int_fast64_t = c_long;
pub const uint_fast8_t = u8;
pub const uint_fast16_t = c_ulong;
pub const uint_fast32_t = c_ulong;
pub const uint_fast64_t = c_ulong;
pub const intmax_t = __intmax_t;
pub const uintmax_t = __uintmax_t;
pub const struct_lua_State = opaque {};
pub const lua_State = struct_lua_State;
pub const lua_Number = f64;
pub const lua_Integer = c_longlong;
pub const lua_Unsigned = c_ulonglong;
pub const lua_KContext = isize;
pub const lua_CFunction = ?fn (?*lua_State) callconv(.C) c_int;
pub const lua_KFunction = ?fn (?*lua_State, c_int, lua_KContext) callconv(.C) c_int;
pub const lua_Reader = ?fn (?*lua_State, ?*c_void, [*c]usize) callconv(.C) [*c]const u8;
pub const lua_Writer = ?fn (?*lua_State, ?*const c_void, usize, ?*c_void) callconv(.C) c_int;
pub const lua_Alloc = ?fn (?*c_void, ?*c_void, usize, usize) callconv(.C) ?*c_void;
pub const lua_WarnFunction = ?fn (?*c_void, [*c]const u8, c_int) callconv(.C) void;
pub extern const lua_ident: [*c]const u8;
pub extern fn lua_newstate(f: lua_Alloc, ud: ?*c_void) ?*lua_State;
pub extern fn lua_close(L: ?*lua_State) void;
pub extern fn lua_newthread(L: ?*lua_State) ?*lua_State;
pub extern fn lua_resetthread(L: ?*lua_State) c_int;
pub extern fn lua_atpanic(L: ?*lua_State, panicf: lua_CFunction) lua_CFunction;
pub extern fn lua_version(L: ?*lua_State) lua_Number;
pub extern fn lua_absindex(L: ?*lua_State, idx: c_int) c_int;
pub extern fn lua_gettop(L: ?*lua_State) c_int;
pub extern fn lua_settop(L: ?*lua_State, idx: c_int) void;
pub extern fn lua_pushvalue(L: ?*lua_State, idx: c_int) void;
pub extern fn lua_rotate(L: ?*lua_State, idx: c_int, n: c_int) void;
pub extern fn lua_copy(L: ?*lua_State, fromidx: c_int, toidx: c_int) void;
pub extern fn lua_checkstack(L: ?*lua_State, n: c_int) c_int;
pub extern fn lua_xmove(from: ?*lua_State, to: ?*lua_State, n: c_int) void;
pub extern fn lua_isnumber(L: ?*lua_State, idx: c_int) c_int;
pub extern fn lua_isstring(L: ?*lua_State, idx: c_int) c_int;
pub extern fn lua_iscfunction(L: ?*lua_State, idx: c_int) c_int;
pub extern fn lua_isinteger(L: ?*lua_State, idx: c_int) c_int;
pub extern fn lua_isuserdata(L: ?*lua_State, idx: c_int) c_int;
pub extern fn lua_type(L: ?*lua_State, idx: c_int) c_int;
pub extern fn lua_typename(L: ?*lua_State, tp: c_int) [*c]const u8;
pub extern fn lua_tonumberx(L: ?*lua_State, idx: c_int, isnum: [*c]c_int) lua_Number;
pub extern fn lua_tointegerx(L: ?*lua_State, idx: c_int, isnum: [*c]c_int) lua_Integer;
pub extern fn lua_toboolean(L: ?*lua_State, idx: c_int) c_int;
pub extern fn lua_tolstring(L: ?*lua_State, idx: c_int, len: [*c]usize) [*c]const u8;
pub extern fn lua_rawlen(L: ?*lua_State, idx: c_int) lua_Unsigned;
pub extern fn lua_tocfunction(L: ?*lua_State, idx: c_int) lua_CFunction;
pub extern fn lua_touserdata(L: ?*lua_State, idx: c_int) ?*c_void;
pub extern fn lua_tothread(L: ?*lua_State, idx: c_int) ?*lua_State;
pub extern fn lua_topointer(L: ?*lua_State, idx: c_int) ?*const c_void;
pub extern fn lua_arith(L: ?*lua_State, op: c_int) void;
pub extern fn lua_rawequal(L: ?*lua_State, idx1: c_int, idx2: c_int) c_int;
pub extern fn lua_compare(L: ?*lua_State, idx1: c_int, idx2: c_int, op: c_int) c_int;
pub extern fn lua_pushnil(L: ?*lua_State) void;
pub extern fn lua_pushnumber(L: ?*lua_State, n: lua_Number) void;
pub extern fn lua_pushinteger(L: ?*lua_State, n: lua_Integer) void;
pub extern fn lua_pushlstring(L: ?*lua_State, s: [*c]const u8, len: usize) [*c]const u8;
pub extern fn lua_pushstring(L: ?*lua_State, s: [*c]const u8) [*c]const u8;
pub const struct___va_list_tag = extern struct {
    gp_offset: c_uint,
    fp_offset: c_uint,
    overflow_arg_area: ?*c_void,
    reg_save_area: ?*c_void,
};
pub extern fn lua_pushvfstring(L: ?*lua_State, fmt: [*c]const u8, argp: [*c]struct___va_list_tag) [*c]const u8;
pub extern fn lua_pushfstring(L: ?*lua_State, fmt: [*c]const u8, ...) [*c]const u8;
pub extern fn lua_pushcclosure(L: ?*lua_State, @"fn": lua_CFunction, n: c_int) void;
pub extern fn lua_pushboolean(L: ?*lua_State, b: c_int) void;
pub extern fn lua_pushlightuserdata(L: ?*lua_State, p: ?*c_void) void;
pub extern fn lua_pushthread(L: ?*lua_State) c_int;
pub extern fn lua_getglobal(L: ?*lua_State, name: [*c]const u8) c_int;
pub extern fn lua_gettable(L: ?*lua_State, idx: c_int) c_int;
pub extern fn lua_getfield(L: ?*lua_State, idx: c_int, k: [*c]const u8) c_int;
pub extern fn lua_geti(L: ?*lua_State, idx: c_int, n: lua_Integer) c_int;
pub extern fn lua_rawget(L: ?*lua_State, idx: c_int) c_int;
pub extern fn lua_rawgeti(L: ?*lua_State, idx: c_int, n: lua_Integer) c_int;
pub extern fn lua_rawgetp(L: ?*lua_State, idx: c_int, p: ?*const c_void) c_int;
pub extern fn lua_createtable(L: ?*lua_State, narr: c_int, nrec: c_int) void;
pub extern fn lua_newuserdatauv(L: ?*lua_State, sz: usize, nuvalue: c_int) ?*c_void;
pub extern fn lua_getmetatable(L: ?*lua_State, objindex: c_int) c_int;
pub extern fn lua_getiuservalue(L: ?*lua_State, idx: c_int, n: c_int) c_int;
pub extern fn lua_setglobal(L: ?*lua_State, name: [*c]const u8) void;
pub extern fn lua_settable(L: ?*lua_State, idx: c_int) void;
pub extern fn lua_setfield(L: ?*lua_State, idx: c_int, k: [*c]const u8) void;
pub extern fn lua_seti(L: ?*lua_State, idx: c_int, n: lua_Integer) void;
pub extern fn lua_rawset(L: ?*lua_State, idx: c_int) void;
pub extern fn lua_rawseti(L: ?*lua_State, idx: c_int, n: lua_Integer) void;
pub extern fn lua_rawsetp(L: ?*lua_State, idx: c_int, p: ?*const c_void) void;
pub extern fn lua_setmetatable(L: ?*lua_State, objindex: c_int) c_int;
pub extern fn lua_setiuservalue(L: ?*lua_State, idx: c_int, n: c_int) c_int;
pub extern fn lua_callk(L: ?*lua_State, nargs: c_int, nresults: c_int, ctx: lua_KContext, k: lua_KFunction) void;
pub extern fn lua_pcallk(L: ?*lua_State, nargs: c_int, nresults: c_int, errfunc: c_int, ctx: lua_KContext, k: lua_KFunction) c_int;
pub extern fn lua_load(L: ?*lua_State, reader: lua_Reader, dt: ?*c_void, chunkname: [*c]const u8, mode: [*c]const u8) c_int;
pub extern fn lua_dump(L: ?*lua_State, writer: lua_Writer, data: ?*c_void, strip: c_int) c_int;
pub extern fn lua_yieldk(L: ?*lua_State, nresults: c_int, ctx: lua_KContext, k: lua_KFunction) c_int;
pub extern fn lua_resume(L: ?*lua_State, from: ?*lua_State, narg: c_int, nres: [*c]c_int) c_int;
pub extern fn lua_status(L: ?*lua_State) c_int;
pub extern fn lua_isyieldable(L: ?*lua_State) c_int;
pub extern fn lua_setwarnf(L: ?*lua_State, f: lua_WarnFunction, ud: ?*c_void) void;
pub extern fn lua_warning(L: ?*lua_State, msg: [*c]const u8, tocont: c_int) void;
pub extern fn lua_gc(L: ?*lua_State, what: c_int, ...) c_int;
pub extern fn lua_error(L: ?*lua_State) c_int;
pub extern fn lua_next(L: ?*lua_State, idx: c_int) c_int;
pub extern fn lua_concat(L: ?*lua_State, n: c_int) void;
pub extern fn lua_len(L: ?*lua_State, idx: c_int) void;
pub extern fn lua_stringtonumber(L: ?*lua_State, s: [*c]const u8) usize;
pub extern fn lua_getallocf(L: ?*lua_State, ud: [*c]?*c_void) lua_Alloc;
pub extern fn lua_setallocf(L: ?*lua_State, f: lua_Alloc, ud: ?*c_void) void;
pub extern fn lua_toclose(L: ?*lua_State, idx: c_int) void;
pub const struct_CallInfo = opaque {};
pub const struct_lua_Debug = extern struct {
    event: c_int,
    name: [*c]const u8,
    namewhat: [*c]const u8,
    what: [*c]const u8,
    source: [*c]const u8,
    srclen: usize,
    currentline: c_int,
    linedefined: c_int,
    lastlinedefined: c_int,
    nups: u8,
    nparams: u8,
    isvararg: u8,
    istailcall: u8,
    ftransfer: c_ushort,
    ntransfer: c_ushort,
    short_src: [60]u8,
    i_ci: ?*struct_CallInfo,
};
pub const lua_Debug = struct_lua_Debug;
pub const lua_Hook = ?fn (?*lua_State, [*c]lua_Debug) callconv(.C) void;
pub extern fn lua_getstack(L: ?*lua_State, level: c_int, ar: [*c]lua_Debug) c_int;
pub extern fn lua_getinfo(L: ?*lua_State, what: [*c]const u8, ar: [*c]lua_Debug) c_int;
pub extern fn lua_getlocal(L: ?*lua_State, ar: [*c]const lua_Debug, n: c_int) [*c]const u8;
pub extern fn lua_setlocal(L: ?*lua_State, ar: [*c]const lua_Debug, n: c_int) [*c]const u8;
pub extern fn lua_getupvalue(L: ?*lua_State, funcindex: c_int, n: c_int) [*c]const u8;
pub extern fn lua_setupvalue(L: ?*lua_State, funcindex: c_int, n: c_int) [*c]const u8;
pub extern fn lua_upvalueid(L: ?*lua_State, fidx: c_int, n: c_int) ?*c_void;
pub extern fn lua_upvaluejoin(L: ?*lua_State, fidx1: c_int, n1: c_int, fidx2: c_int, n2: c_int) void;
pub extern fn lua_sethook(L: ?*lua_State, func: lua_Hook, mask: c_int, count: c_int) void;
pub extern fn lua_gethook(L: ?*lua_State) lua_Hook;
pub extern fn lua_gethookmask(L: ?*lua_State) c_int;
pub extern fn lua_gethookcount(L: ?*lua_State) c_int;
pub extern fn lua_setcstacklimit(L: ?*lua_State, limit: c_uint) c_int;
pub extern fn luaopen_base(L: ?*lua_State) c_int;
pub extern fn luaopen_coroutine(L: ?*lua_State) c_int;
pub extern fn luaopen_table(L: ?*lua_State) c_int;
pub extern fn luaopen_io(L: ?*lua_State) c_int;
pub extern fn luaopen_os(L: ?*lua_State) c_int;
pub extern fn luaopen_string(L: ?*lua_State) c_int;
pub extern fn luaopen_utf8(L: ?*lua_State) c_int;
pub extern fn luaopen_math(L: ?*lua_State) c_int;
pub extern fn luaopen_debug(L: ?*lua_State) c_int;
pub extern fn luaopen_package(L: ?*lua_State) c_int;
pub extern fn luaL_openlibs(L: ?*lua_State) void;
const union_unnamed_4 = extern union {
    __wch: c_uint,
    __wchb: [4]u8,
};
const struct_unnamed_3 = extern struct {
    __count: c_int,
    __value: union_unnamed_4,
};
pub const __mbstate_t = struct_unnamed_3;
pub const struct__G_fpos_t = extern struct {
    __pos: __off_t,
    __state: __mbstate_t,
};
pub const __fpos_t = struct__G_fpos_t;
pub const struct__G_fpos64_t = extern struct {
    __pos: __off64_t,
    __state: __mbstate_t,
};
pub const __fpos64_t = struct__G_fpos64_t;
pub const struct__IO_marker = opaque {};
pub const struct__IO_codecvt = opaque {};
pub const struct__IO_wide_data = opaque {};
pub const struct__IO_FILE = extern struct {
    _flags: c_int,
    _IO_read_ptr: [*c]u8,
    _IO_read_end: [*c]u8,
    _IO_read_base: [*c]u8,
    _IO_write_base: [*c]u8,
    _IO_write_ptr: [*c]u8,
    _IO_write_end: [*c]u8,
    _IO_buf_base: [*c]u8,
    _IO_buf_end: [*c]u8,
    _IO_save_base: [*c]u8,
    _IO_backup_base: [*c]u8,
    _IO_save_end: [*c]u8,
    _markers: ?*struct__IO_marker,
    _chain: [*c]struct__IO_FILE,
    _fileno: c_int,
    _flags2: c_int,
    _old_offset: __off_t,
    _cur_column: c_ushort,
    _vtable_offset: i8,
    _shortbuf: [1]u8,
    _lock: ?*_IO_lock_t,
    _offset: __off64_t,
    _codecvt: ?*struct__IO_codecvt,
    _wide_data: ?*struct__IO_wide_data,
    _freeres_list: [*c]struct__IO_FILE,
    _freeres_buf: ?*c_void,
    __pad5: usize,
    _mode: c_int,
    _unused2: [20]u8,
};
pub const __FILE = struct__IO_FILE;
pub const FILE = struct__IO_FILE;
pub const _IO_lock_t = c_void;
pub const off_t = __off_t;
pub const fpos_t = __fpos_t;
pub extern var stdin: [*c]FILE;
pub extern var stdout: [*c]FILE;
pub extern var stderr: [*c]FILE;
pub extern fn remove(__filename: [*c]const u8) c_int;
pub extern fn rename(__old: [*c]const u8, __new: [*c]const u8) c_int;
pub extern fn renameat(__oldfd: c_int, __old: [*c]const u8, __newfd: c_int, __new: [*c]const u8) c_int;
pub extern fn tmpfile() [*c]FILE;
pub extern fn tmpnam(__s: [*c]u8) [*c]u8;
pub extern fn tmpnam_r(__s: [*c]u8) [*c]u8;
pub extern fn tempnam(__dir: [*c]const u8, __pfx: [*c]const u8) [*c]u8;
pub extern fn fclose(__stream: [*c]FILE) c_int;
pub extern fn fflush(__stream: [*c]FILE) c_int;
pub extern fn fflush_unlocked(__stream: [*c]FILE) c_int;
pub extern fn fopen(__filename: [*c]const u8, __modes: [*c]const u8) [*c]FILE;
pub extern fn freopen(noalias __filename: [*c]const u8, noalias __modes: [*c]const u8, noalias __stream: [*c]FILE) [*c]FILE;
pub extern fn fdopen(__fd: c_int, __modes: [*c]const u8) [*c]FILE;
pub extern fn fmemopen(__s: ?*c_void, __len: usize, __modes: [*c]const u8) [*c]FILE;
pub extern fn open_memstream(__bufloc: [*c][*c]u8, __sizeloc: [*c]usize) [*c]FILE;
pub extern fn setbuf(noalias __stream: [*c]FILE, noalias __buf: [*c]u8) void;
pub extern fn setvbuf(noalias __stream: [*c]FILE, noalias __buf: [*c]u8, __modes: c_int, __n: usize) c_int;
pub extern fn setbuffer(noalias __stream: [*c]FILE, noalias __buf: [*c]u8, __size: usize) void;
pub extern fn setlinebuf(__stream: [*c]FILE) void;
pub extern fn fprintf(__stream: [*c]FILE, __format: [*c]const u8, ...) c_int;
pub extern fn printf(__format: [*c]const u8, ...) c_int;
pub extern fn sprintf(__s: [*c]u8, __format: [*c]const u8, ...) c_int;
pub extern fn vfprintf(__s: [*c]FILE, __format: [*c]const u8, __arg: [*c]struct___va_list_tag) c_int;
pub fn vprintf(arg___fmt: [*c]const u8, arg___arg: [*c]struct___va_list_tag) callconv(.C) c_int {
    var __fmt = arg___fmt;
    var __arg = arg___arg;
    return vfprintf(stdout, __fmt, __arg);
}
pub extern fn vsprintf(__s: [*c]u8, __format: [*c]const u8, __arg: [*c]struct___va_list_tag) c_int;
pub extern fn snprintf(__s: [*c]u8, __maxlen: c_ulong, __format: [*c]const u8, ...) c_int;
pub extern fn vsnprintf(__s: [*c]u8, __maxlen: c_ulong, __format: [*c]const u8, __arg: [*c]struct___va_list_tag) c_int;
pub extern fn vdprintf(__fd: c_int, noalias __fmt: [*c]const u8, __arg: [*c]struct___va_list_tag) c_int;
pub extern fn dprintf(__fd: c_int, noalias __fmt: [*c]const u8, ...) c_int;
pub extern fn fscanf(noalias __stream: [*c]FILE, noalias __format: [*c]const u8, ...) c_int;
pub extern fn scanf(noalias __format: [*c]const u8, ...) c_int;
pub extern fn sscanf(noalias __s: [*c]const u8, noalias __format: [*c]const u8, ...) c_int;
pub const _Float32 = f32;
pub const _Float64 = f64;
pub const _Float32x = f64;
pub const _Float64x = c_longdouble;
pub extern fn vfscanf(noalias __s: [*c]FILE, noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag) c_int;
pub extern fn vscanf(noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag) c_int;
pub extern fn vsscanf(noalias __s: [*c]const u8, noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag) c_int;
pub extern fn fgetc(__stream: [*c]FILE) c_int;
pub extern fn getc(__stream: [*c]FILE) c_int;
pub fn getchar() callconv(.C) c_int {
    return getc(stdin);
}
pub fn getc_unlocked(arg___fp: [*c]FILE) callconv(.C) c_int {
    var __fp = arg___fp;
    return (if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(((__fp).*._IO_read_ptr >= (__fp).*._IO_read_end)))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) __uflow(__fp) else @bitCast(c_int, @as(c_uint, @ptrCast([*c]u8, @alignCast(@alignOf(u8), (blk: {
        const ref = &(__fp).*._IO_read_ptr;
        const tmp = ref.*;
        ref.* += 1;
        break :blk tmp;
    }))).?.*)));
}
pub fn getchar_unlocked() callconv(.C) c_int {
    return (if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(((stdin).*._IO_read_ptr >= (stdin).*._IO_read_end)))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) __uflow(stdin) else @bitCast(c_int, @as(c_uint, @ptrCast([*c]u8, @alignCast(@alignOf(u8), (blk: {
        const ref = &(stdin).*._IO_read_ptr;
        const tmp = ref.*;
        ref.* += 1;
        break :blk tmp;
    }))).?.*)));
}
pub fn fgetc_unlocked(arg___fp: [*c]FILE) callconv(.C) c_int {
    var __fp = arg___fp;
    return (if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(((__fp).*._IO_read_ptr >= (__fp).*._IO_read_end)))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) __uflow(__fp) else @bitCast(c_int, @as(c_uint, @ptrCast([*c]u8, @alignCast(@alignOf(u8), (blk: {
        const ref = &(__fp).*._IO_read_ptr;
        const tmp = ref.*;
        ref.* += 1;
        break :blk tmp;
    }))).?.*)));
}
pub extern fn fputc(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn putc(__c: c_int, __stream: [*c]FILE) c_int;
pub fn putchar(arg___c: c_int) callconv(.C) c_int {
    var __c = arg___c;
    return putc(__c, stdout);
}
pub fn fputc_unlocked(arg___c: c_int, arg___stream: [*c]FILE) callconv(.C) c_int {
    var __c = arg___c;
    var __stream = arg___stream;
    return (if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(((__stream).*._IO_write_ptr >= (__stream).*._IO_write_end)))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) __overflow(__stream, @bitCast(c_int, @as(c_uint, @bitCast(u8, @truncate(i8, (__c)))))) else @bitCast(c_int, @as(c_uint, @bitCast(u8, (blk: {
        const tmp = @bitCast(u8, @truncate(i8, (__c)));
        (blk_1: {
            const ref = &(__stream).*._IO_write_ptr;
            const tmp_2 = ref.*;
            ref.* += 1;
            break :blk_1 tmp_2;
        }).?.* = tmp;
        break :blk tmp;
    })))));
}
pub fn putc_unlocked(arg___c: c_int, arg___stream: [*c]FILE) callconv(.C) c_int {
    var __c = arg___c;
    var __stream = arg___stream;
    return (if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(((__stream).*._IO_write_ptr >= (__stream).*._IO_write_end)))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) __overflow(__stream, @bitCast(c_int, @as(c_uint, @bitCast(u8, @truncate(i8, (__c)))))) else @bitCast(c_int, @as(c_uint, @bitCast(u8, (blk: {
        const tmp = @bitCast(u8, @truncate(i8, (__c)));
        (blk_1: {
            const ref = &(__stream).*._IO_write_ptr;
            const tmp_2 = ref.*;
            ref.* += 1;
            break :blk_1 tmp_2;
        }).?.* = tmp;
        break :blk tmp;
    })))));
}
pub fn putchar_unlocked(arg___c: c_int) callconv(.C) c_int {
    var __c = arg___c;
    return (if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(((stdout).*._IO_write_ptr >= (stdout).*._IO_write_end)))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) __overflow(stdout, @bitCast(c_int, @as(c_uint, @bitCast(u8, @truncate(i8, (__c)))))) else @bitCast(c_int, @as(c_uint, @bitCast(u8, (blk: {
        const tmp = @bitCast(u8, @truncate(i8, (__c)));
        (blk_1: {
            const ref = &(stdout).*._IO_write_ptr;
            const tmp_2 = ref.*;
            ref.* += 1;
            break :blk_1 tmp_2;
        }).?.* = tmp;
        break :blk tmp;
    })))));
}
pub extern fn getw(__stream: [*c]FILE) c_int;
pub extern fn putw(__w: c_int, __stream: [*c]FILE) c_int;
pub extern fn fgets(noalias __s: [*c]u8, __n: c_int, noalias __stream: [*c]FILE) [*c]u8;
pub extern fn __getdelim(noalias __lineptr: [*c][*c]u8, noalias __n: [*c]usize, __delimiter: c_int, noalias __stream: [*c]FILE) __ssize_t;
pub extern fn getdelim(noalias __lineptr: [*c][*c]u8, noalias __n: [*c]usize, __delimiter: c_int, noalias __stream: [*c]FILE) __ssize_t;
pub extern fn getline(noalias __lineptr: [*c][*c]u8, noalias __n: [*c]usize, noalias __stream: [*c]FILE) __ssize_t;
pub extern fn fputs(noalias __s: [*c]const u8, noalias __stream: [*c]FILE) c_int;
pub extern fn puts(__s: [*c]const u8) c_int;
pub extern fn ungetc(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn fread(__ptr: ?*c_void, __size: c_ulong, __n: c_ulong, __stream: [*c]FILE) c_ulong;
pub extern fn fwrite(__ptr: ?*const c_void, __size: c_ulong, __n: c_ulong, __s: [*c]FILE) c_ulong;
pub extern fn fread_unlocked(noalias __ptr: ?*c_void, __size: usize, __n: usize, noalias __stream: [*c]FILE) usize;
pub extern fn fwrite_unlocked(noalias __ptr: ?*const c_void, __size: usize, __n: usize, noalias __stream: [*c]FILE) usize;
pub extern fn fseek(__stream: [*c]FILE, __off: c_long, __whence: c_int) c_int;
pub extern fn ftell(__stream: [*c]FILE) c_long;
pub extern fn rewind(__stream: [*c]FILE) void;
pub extern fn fseeko(__stream: [*c]FILE, __off: __off_t, __whence: c_int) c_int;
pub extern fn ftello(__stream: [*c]FILE) __off_t;
pub extern fn fgetpos(noalias __stream: [*c]FILE, noalias __pos: [*c]fpos_t) c_int;
pub extern fn fsetpos(__stream: [*c]FILE, __pos: [*c]const fpos_t) c_int;
pub extern fn clearerr(__stream: [*c]FILE) void;
pub extern fn feof(__stream: [*c]FILE) c_int;
pub extern fn ferror(__stream: [*c]FILE) c_int;
pub extern fn clearerr_unlocked(__stream: [*c]FILE) void;
pub fn feof_unlocked(arg___stream: [*c]FILE) callconv(.C) c_int {
    var __stream = arg___stream;
    return (((__stream).*._flags & @as(c_int, 16)) != @as(c_int, 0));
}
pub fn ferror_unlocked(arg___stream: [*c]FILE) callconv(.C) c_int {
    var __stream = arg___stream;
    return (((__stream).*._flags & @as(c_int, 32)) != @as(c_int, 0));
}
pub extern fn perror(__s: [*c]const u8) void;
pub extern fn fileno(__stream: [*c]FILE) c_int;
pub extern fn fileno_unlocked(__stream: [*c]FILE) c_int;
pub extern fn popen(__command: [*c]const u8, __modes: [*c]const u8) [*c]FILE;
pub extern fn pclose(__stream: [*c]FILE) c_int;
pub extern fn ctermid(__s: [*c]u8) [*c]u8;
pub extern fn flockfile(__stream: [*c]FILE) void;
pub extern fn ftrylockfile(__stream: [*c]FILE) c_int;
pub extern fn funlockfile(__stream: [*c]FILE) void;
pub extern fn __uflow([*c]FILE) c_int;
pub extern fn __overflow([*c]FILE, c_int) c_int;
const union_unnamed_5 = extern union {
    n: lua_Number,
    u: f64,
    s: ?*c_void,
    i: lua_Integer,
    l: c_long,
    b: [1024]u8,
};
pub const struct_luaL_Buffer = extern struct {
    b: [*c]u8,
    size: usize,
    n: usize,
    L: ?*lua_State,
    init: union_unnamed_5,
};
pub const luaL_Buffer = struct_luaL_Buffer;
pub const struct_luaL_Reg = extern struct {
    name: [*c]const u8,
    func: lua_CFunction,
};
pub const luaL_Reg = struct_luaL_Reg;
pub extern fn luaL_checkversion_(L: ?*lua_State, ver: lua_Number, sz: usize) void;
pub extern fn luaL_getmetafield(L: ?*lua_State, obj: c_int, e: [*c]const u8) c_int;
pub extern fn luaL_callmeta(L: ?*lua_State, obj: c_int, e: [*c]const u8) c_int;
pub extern fn luaL_tolstring(L: ?*lua_State, idx: c_int, len: [*c]usize) [*c]const u8;
pub extern fn luaL_argerror(L: ?*lua_State, arg: c_int, extramsg: [*c]const u8) c_int;
pub extern fn luaL_typeerror(L: ?*lua_State, arg: c_int, tname: [*c]const u8) c_int;
pub extern fn luaL_checklstring(L: ?*lua_State, arg: c_int, l: [*c]usize) [*c]const u8;
pub extern fn luaL_optlstring(L: ?*lua_State, arg: c_int, def: [*c]const u8, l: [*c]usize) [*c]const u8;
pub extern fn luaL_checknumber(L: ?*lua_State, arg: c_int) lua_Number;
pub extern fn luaL_optnumber(L: ?*lua_State, arg: c_int, def: lua_Number) lua_Number;
pub extern fn luaL_checkinteger(L: ?*lua_State, arg: c_int) lua_Integer;
pub extern fn luaL_optinteger(L: ?*lua_State, arg: c_int, def: lua_Integer) lua_Integer;
pub extern fn luaL_checkstack(L: ?*lua_State, sz: c_int, msg: [*c]const u8) void;
pub extern fn luaL_checktype(L: ?*lua_State, arg: c_int, t: c_int) void;
pub extern fn luaL_checkany(L: ?*lua_State, arg: c_int) void;
pub extern fn luaL_newmetatable(L: ?*lua_State, tname: [*c]const u8) c_int;
pub extern fn luaL_setmetatable(L: ?*lua_State, tname: [*c]const u8) void;
pub extern fn luaL_testudata(L: ?*lua_State, ud: c_int, tname: [*c]const u8) ?*c_void;
pub extern fn luaL_checkudata(L: ?*lua_State, ud: c_int, tname: [*c]const u8) ?*c_void;
pub extern fn luaL_where(L: ?*lua_State, lvl: c_int) void;
pub extern fn luaL_error(L: ?*lua_State, fmt: [*c]const u8, ...) c_int;
pub extern fn luaL_checkoption(L: ?*lua_State, arg: c_int, def: [*c]const u8, lst: [*c]const [*c]const u8) c_int;
pub extern fn luaL_fileresult(L: ?*lua_State, stat: c_int, fname: [*c]const u8) c_int;
pub extern fn luaL_execresult(L: ?*lua_State, stat: c_int) c_int;
pub extern fn luaL_ref(L: ?*lua_State, t: c_int) c_int;
pub extern fn luaL_unref(L: ?*lua_State, t: c_int, ref: c_int) void;
pub extern fn luaL_loadfilex(L: ?*lua_State, filename: [*c]const u8, mode: [*c]const u8) c_int;
pub extern fn luaL_loadbufferx(L: ?*lua_State, buff: [*c]const u8, sz: usize, name: [*c]const u8, mode: [*c]const u8) c_int;
pub extern fn luaL_loadstring(L: ?*lua_State, s: [*c]const u8) c_int;
pub extern fn luaL_newstate() ?*lua_State;
pub extern fn luaL_len(L: ?*lua_State, idx: c_int) lua_Integer;
pub extern fn luaL_addgsub(b: [*c]luaL_Buffer, s: [*c]const u8, p: [*c]const u8, r: [*c]const u8) void;
pub extern fn luaL_gsub(L: ?*lua_State, s: [*c]const u8, p: [*c]const u8, r: [*c]const u8) [*c]const u8;
pub extern fn luaL_setfuncs(L: ?*lua_State, l: [*c]const luaL_Reg, nup: c_int) void;
pub extern fn luaL_getsubtable(L: ?*lua_State, idx: c_int, fname: [*c]const u8) c_int;
pub extern fn luaL_traceback(L: ?*lua_State, L1: ?*lua_State, msg: [*c]const u8, level: c_int) void;
pub extern fn luaL_requiref(L: ?*lua_State, modname: [*c]const u8, openf: lua_CFunction, glb: c_int) void;
pub extern fn luaL_buffinit(L: ?*lua_State, B: [*c]luaL_Buffer) void;
pub extern fn luaL_prepbuffsize(B: [*c]luaL_Buffer, sz: usize) [*c]u8;
pub extern fn luaL_addlstring(B: [*c]luaL_Buffer, s: [*c]const u8, l: usize) void;
pub extern fn luaL_addstring(B: [*c]luaL_Buffer, s: [*c]const u8) void;
pub extern fn luaL_addvalue(B: [*c]luaL_Buffer) void;
pub extern fn luaL_pushresult(B: [*c]luaL_Buffer) void;
pub extern fn luaL_pushresultsize(B: [*c]luaL_Buffer, sz: usize) void;
pub extern fn luaL_buffinitsize(L: ?*lua_State, B: [*c]luaL_Buffer, sz: usize) [*c]u8;
pub const struct_luaL_Stream = extern struct {
    f: [*c]FILE,
    closef: lua_CFunction,
};
pub const luaL_Stream = struct_luaL_Stream;
pub const __INTMAX_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // (no file):62:9
pub const __UINTMAX_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_unsigned"); // (no file):66:9
pub const __PTRDIFF_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // (no file):73:9
pub const __INTPTR_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // (no file):77:9
pub const __SIZE_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_unsigned"); // (no file):81:9
pub const __UINTPTR_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_unsigned"); // (no file):96:9
pub const __INT64_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // (no file):159:9
pub const __UINT64_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_unsigned"); // (no file):187:9
pub const __INT_LEAST64_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // (no file):225:9
pub const __UINT_LEAST64_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_unsigned"); // (no file):229:9
pub const __INT_FAST64_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // (no file):265:9
pub const __UINT_FAST64_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_unsigned"); // (no file):269:9
pub const __GLIBC_USE = @compileError("unable to translate C expr: unexpected token .HashHash"); // /usr/local/lib/libc/include/generic-glibc/features.h:179:9
pub const __NTH = @compileError("unable to translate C expr: unexpected token .Identifier"); // /usr/local/lib/libc/include/generic-glibc/sys/cdefs.h:57:11
pub const __NTHNL = @compileError("unable to translate C expr: unexpected token .Identifier"); // /usr/local/lib/libc/include/generic-glibc/sys/cdefs.h:58:11
pub const __CONCAT = @compileError("unable to translate C expr: unexpected token .HashHash"); // /usr/local/lib/libc/include/generic-glibc/sys/cdefs.h:105:9
pub const __STRING = @compileError("unable to translate C expr: unexpected token .Hash"); // /usr/local/lib/libc/include/generic-glibc/sys/cdefs.h:106:9
pub const __ptr_t = @compileError("unable to translate C expr: unexpected token .Nl"); // /usr/local/lib/libc/include/generic-glibc/sys/cdefs.h:109:9
pub const __warndecl = @compileError("unable to translate C expr: unexpected token .Keyword_extern"); // /usr/local/lib/libc/include/generic-glibc/sys/cdefs.h:133:10
pub const __warnattr = @compileError("unable to translate C expr: unexpected token .Nl"); // /usr/local/lib/libc/include/generic-glibc/sys/cdefs.h:134:10
pub const __errordecl = @compileError("unable to translate C expr: unexpected token .Keyword_extern"); // /usr/local/lib/libc/include/generic-glibc/sys/cdefs.h:135:10
pub const __flexarr = @compileError("unable to translate C expr: unexpected token .LBracket"); // /usr/local/lib/libc/include/generic-glibc/sys/cdefs.h:143:10
pub const __REDIRECT = @compileError("unable to translate C expr: unexpected token .Hash"); // /usr/local/lib/libc/include/generic-glibc/sys/cdefs.h:174:10
pub const __REDIRECT_NTH = @compileError("unable to translate C expr: unexpected token .Hash"); // /usr/local/lib/libc/include/generic-glibc/sys/cdefs.h:181:11
pub const __REDIRECT_NTHNL = @compileError("unable to translate C expr: unexpected token .Hash"); // /usr/local/lib/libc/include/generic-glibc/sys/cdefs.h:183:11
pub const __ASMNAME2 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /usr/local/lib/libc/include/generic-glibc/sys/cdefs.h:187:10
pub const __attribute_alloc_size__ = @compileError("unable to translate C expr: unexpected token .Nl"); // /usr/local/lib/libc/include/generic-glibc/sys/cdefs.h:219:10
pub const __extern_inline = @compileError("unable to translate C expr: unexpected token .Keyword_extern"); // /usr/local/lib/libc/include/generic-glibc/sys/cdefs.h:346:11
pub const __extern_always_inline = @compileError("unable to translate C expr: unexpected token .Keyword_extern"); // /usr/local/lib/libc/include/generic-glibc/sys/cdefs.h:347:11
pub const __attribute_copy__ = @compileError("unable to translate C expr: unexpected token .Nl"); // /usr/local/lib/libc/include/generic-glibc/sys/cdefs.h:441:10
pub const __LDBL_REDIR2_DECL = @compileError("unable to translate C expr: unexpected token .Nl"); // /usr/local/lib/libc/include/generic-glibc/sys/cdefs.h:512:10
pub const __LDBL_REDIR_DECL = @compileError("unable to translate C expr: unexpected token .Nl"); // /usr/local/lib/libc/include/generic-glibc/sys/cdefs.h:513:10
pub const __glibc_macro_warning1 = @compileError("unable to translate C expr: unexpected token .Hash"); // /usr/local/lib/libc/include/generic-glibc/sys/cdefs.h:527:10
pub const __attr_access = @compileError("unable to translate C expr: unexpected token .Nl"); // /usr/local/lib/libc/include/generic-glibc/sys/cdefs.h:559:11
pub const LUA_API = @compileError("unable to translate C expr: unexpected token .Keyword_extern"); // /usr/local/include/luaconf.h:292:9
pub const LUAI_FUNC = @compileError("unable to translate C expr: unexpected token .Keyword_extern"); // /usr/local/include/luaconf.h:320:9
pub const lua_numbertointeger = @compileError("unable to translate C expr: expected ')' instead got: Equal"); // /usr/local/include/luaconf.h:428:9
pub const l_floatatt = @compileError("unable to translate C expr: expected ')' instead got: HashHash"); // /usr/local/include/luaconf.h:471:9
pub const LUA_INTEGER = @compileError("unable to translate C expr: unexpected token .Keyword_long"); // /usr/local/include/luaconf.h:554:9
pub const __S16_TYPE = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // /usr/local/lib/libc/include/generic-glibc/bits/types.h:109:9
pub const __U16_TYPE = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // /usr/local/lib/libc/include/generic-glibc/bits/types.h:110:9
pub const __SLONGWORD_TYPE = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // /usr/local/lib/libc/include/generic-glibc/bits/types.h:113:9
pub const __ULONGWORD_TYPE = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // /usr/local/lib/libc/include/generic-glibc/bits/types.h:114:9
pub const __SQUAD_TYPE = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // /usr/local/lib/libc/include/generic-glibc/bits/types.h:128:10
pub const __UQUAD_TYPE = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // /usr/local/lib/libc/include/generic-glibc/bits/types.h:129:10
pub const __SWORD_TYPE = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // /usr/local/lib/libc/include/generic-glibc/bits/types.h:130:10
pub const __UWORD_TYPE = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // /usr/local/lib/libc/include/generic-glibc/bits/types.h:131:10
pub const __S64_TYPE = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // /usr/local/lib/libc/include/generic-glibc/bits/types.h:134:10
pub const __U64_TYPE = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // /usr/local/lib/libc/include/generic-glibc/bits/types.h:135:10
pub const __STD_TYPE = @compileError("unable to translate C expr: unexpected token .Keyword_typedef"); // /usr/local/lib/libc/include/generic-glibc/bits/types.h:137:10
pub const __TIMER_T_TYPE = @compileError("unable to translate C expr: unexpected token .Nl"); // /usr/local/lib/libc/include/x86_64-linux-gnu/bits/typesizes.h:71:9
pub const __FSID_T_TYPE = @compileError("unable to translate C expr: expected Identifier instead got: LBrace"); // /usr/local/lib/libc/include/x86_64-linux-gnu/bits/typesizes.h:73:9
pub const __INT64_C = @compileError("unable to translate C expr: unexpected token .HashHash"); // /usr/local/lib/libc/include/generic-glibc/stdint.h:106:11
pub const __UINT64_C = @compileError("unable to translate C expr: unexpected token .HashHash"); // /usr/local/lib/libc/include/generic-glibc/stdint.h:107:11
pub const INT64_C = @compileError("unable to translate C expr: unexpected token .HashHash"); // /usr/local/lib/libc/include/generic-glibc/stdint.h:252:11
pub const UINT32_C = @compileError("unable to translate C expr: unexpected token .HashHash"); // /usr/local/lib/libc/include/generic-glibc/stdint.h:260:10
pub const UINT64_C = @compileError("unable to translate C expr: unexpected token .HashHash"); // /usr/local/lib/libc/include/generic-glibc/stdint.h:262:11
pub const INTMAX_C = @compileError("unable to translate C expr: unexpected token .HashHash"); // /usr/local/lib/libc/include/generic-glibc/stdint.h:269:11
pub const UINTMAX_C = @compileError("unable to translate C expr: unexpected token .HashHash"); // /usr/local/lib/libc/include/generic-glibc/stdint.h:270:11
pub const lua_getlocaledecpoint = @compileError("unable to translate C expr: unexpected token .RParen"); // /usr/local/include/luaconf.h:674:9
pub const LUAI_MAXALIGN = @compileError("unable to translate C expr: unexpected token .Semicolon"); // /usr/local/include/luaconf.h:756:9
pub const __getc_unlocked_body = @compileError("TODO postfix inc/dec expr"); // /usr/local/lib/libc/include/generic-glibc/bits/types/struct_FILE.h:102:9
pub const __putc_unlocked_body = @compileError("TODO postfix inc/dec expr"); // /usr/local/lib/libc/include/generic-glibc/bits/types/struct_FILE.h:106:9
pub const __f32 = @compileError("unable to translate C expr: unexpected token .HashHash"); // /usr/local/lib/libc/include/generic-glibc/bits/floatn-common.h:91:12
pub const __f64x = @compileError("unable to translate C expr: unexpected token .HashHash"); // /usr/local/lib/libc/include/generic-glibc/bits/floatn-common.h:120:13
pub const __CFLOAT32 = @compileError("unable to translate C expr: unexpected token .Keyword_complex"); // /usr/local/lib/libc/include/generic-glibc/bits/floatn-common.h:149:12
pub const __CFLOAT64 = @compileError("unable to translate C expr: unexpected token .Keyword_complex"); // /usr/local/lib/libc/include/generic-glibc/bits/floatn-common.h:160:13
pub const __CFLOAT32X = @compileError("unable to translate C expr: unexpected token .Keyword_complex"); // /usr/local/lib/libc/include/generic-glibc/bits/floatn-common.h:169:12
pub const __CFLOAT64X = @compileError("unable to translate C expr: unexpected token .Keyword_complex"); // /usr/local/lib/libc/include/generic-glibc/bits/floatn-common.h:178:13
pub const __builtin_huge_valf32 = @compileError("unable to translate C expr: unexpected token .RParen"); // /usr/local/lib/libc/include/generic-glibc/bits/floatn-common.h:218:12
pub const __builtin_inff32 = @compileError("unable to translate C expr: unexpected token .RParen"); // /usr/local/lib/libc/include/generic-glibc/bits/floatn-common.h:219:12
pub const __builtin_huge_valf64 = @compileError("unable to translate C expr: unexpected token .RParen"); // /usr/local/lib/libc/include/generic-glibc/bits/floatn-common.h:255:13
pub const __builtin_inff64 = @compileError("unable to translate C expr: unexpected token .RParen"); // /usr/local/lib/libc/include/generic-glibc/bits/floatn-common.h:256:13
pub const __builtin_huge_valf32x = @compileError("unable to translate C expr: unexpected token .RParen"); // /usr/local/lib/libc/include/generic-glibc/bits/floatn-common.h:272:12
pub const __builtin_inff32x = @compileError("unable to translate C expr: unexpected token .RParen"); // /usr/local/lib/libc/include/generic-glibc/bits/floatn-common.h:273:12
pub const __builtin_huge_valf64x = @compileError("unable to translate C expr: unexpected token .RParen"); // /usr/local/lib/libc/include/generic-glibc/bits/floatn-common.h:289:13
pub const __builtin_inff64x = @compileError("unable to translate C expr: unexpected token .RParen"); // /usr/local/lib/libc/include/generic-glibc/bits/floatn-common.h:290:13
pub const luaL_addchar = @compileError("TODO postfix inc/dec expr"); // /usr/local/include/lauxlib.h:182:9
pub const luaL_addsize = @compileError("unable to translate C expr: expected ')' instead got: PlusEqual"); // /usr/local/include/lauxlib.h:186:9
pub const luaL_buffsub = @compileError("unable to translate C expr: expected ')' instead got: MinusEqual"); // /usr/local/include/lauxlib.h:188:9
pub const __llvm__ = 1;
pub const __clang__ = 1;
pub const __clang_major__ = 11;
pub const __clang_minor__ = 0;
pub const __clang_patchlevel__ = 1;
pub const __clang_version__ = "11.0.1 (git@github.com:ziglang/zig-bootstrap.git bdfe02d4f6a93f216eaddfe4ef6c8825b3119f88)";
pub const __GNUC__ = 4;
pub const __GNUC_MINOR__ = 2;
pub const __GNUC_PATCHLEVEL__ = 1;
pub const __GXX_ABI_VERSION = 1002;
pub const __ATOMIC_RELAXED = 0;
pub const __ATOMIC_CONSUME = 1;
pub const __ATOMIC_ACQUIRE = 2;
pub const __ATOMIC_RELEASE = 3;
pub const __ATOMIC_ACQ_REL = 4;
pub const __ATOMIC_SEQ_CST = 5;
pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = 0;
pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = 1;
pub const __OPENCL_MEMORY_SCOPE_DEVICE = 2;
pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = 3;
pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = 4;
pub const __PRAGMA_REDEFINE_EXTNAME = 1;
pub const __VERSION__ = "Clang 11.0.1 (git@github.com:ziglang/zig-bootstrap.git bdfe02d4f6a93f216eaddfe4ef6c8825b3119f88)";
pub const __OBJC_BOOL_IS_BOOL = 0;
pub const __CONSTANT_CFSTRINGS__ = 1;
pub const __OPTIMIZE__ = 1;
pub const __ORDER_LITTLE_ENDIAN__ = 1234;
pub const __ORDER_BIG_ENDIAN__ = 4321;
pub const __ORDER_PDP_ENDIAN__ = 3412;
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __LITTLE_ENDIAN__ = 1;
pub const _LP64 = 1;
pub const __LP64__ = 1;
pub const __CHAR_BIT__ = 8;
pub const __SCHAR_MAX__ = 127;
pub const __SHRT_MAX__ = 32767;
pub const __INT_MAX__ = 2147483647;
pub const __LONG_MAX__ = @as(c_long, 9223372036854775807);
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __WCHAR_MAX__ = 2147483647;
pub const __WINT_MAX__ = @as(c_uint, 4294967295);
pub const __INTMAX_MAX__ = @as(c_long, 9223372036854775807);
pub const __SIZE_MAX__ = @as(c_ulong, 18446744073709551615);
pub const __UINTMAX_MAX__ = @as(c_ulong, 18446744073709551615);
pub const __PTRDIFF_MAX__ = @as(c_long, 9223372036854775807);
pub const __INTPTR_MAX__ = @as(c_long, 9223372036854775807);
pub const __UINTPTR_MAX__ = @as(c_ulong, 18446744073709551615);
pub const __SIZEOF_DOUBLE__ = 8;
pub const __SIZEOF_FLOAT__ = 4;
pub const __SIZEOF_INT__ = 4;
pub const __SIZEOF_LONG__ = 8;
pub const __SIZEOF_LONG_DOUBLE__ = 16;
pub const __SIZEOF_LONG_LONG__ = 8;
pub const __SIZEOF_POINTER__ = 8;
pub const __SIZEOF_SHORT__ = 2;
pub const __SIZEOF_PTRDIFF_T__ = 8;
pub const __SIZEOF_SIZE_T__ = 8;
pub const __SIZEOF_WCHAR_T__ = 4;
pub const __SIZEOF_WINT_T__ = 4;
pub const __SIZEOF_INT128__ = 16;
pub const __INTMAX_FMTd__ = "ld";
pub const __INTMAX_FMTi__ = "li";
pub const __INTMAX_C_SUFFIX__ = L;
pub const __UINTMAX_FMTo__ = "lo";
pub const __UINTMAX_FMTu__ = "lu";
pub const __UINTMAX_FMTx__ = "lx";
pub const __UINTMAX_FMTX__ = "lX";
pub const __UINTMAX_C_SUFFIX__ = UL;
pub const __INTMAX_WIDTH__ = 64;
pub const __PTRDIFF_FMTd__ = "ld";
pub const __PTRDIFF_FMTi__ = "li";
pub const __PTRDIFF_WIDTH__ = 64;
pub const __INTPTR_FMTd__ = "ld";
pub const __INTPTR_FMTi__ = "li";
pub const __INTPTR_WIDTH__ = 64;
pub const __SIZE_FMTo__ = "lo";
pub const __SIZE_FMTu__ = "lu";
pub const __SIZE_FMTx__ = "lx";
pub const __SIZE_FMTX__ = "lX";
pub const __SIZE_WIDTH__ = 64;
pub const __WCHAR_TYPE__ = c_int;
pub const __WCHAR_WIDTH__ = 32;
pub const __WINT_TYPE__ = c_uint;
pub const __WINT_WIDTH__ = 32;
pub const __SIG_ATOMIC_WIDTH__ = 32;
pub const __SIG_ATOMIC_MAX__ = 2147483647;
pub const __CHAR16_TYPE__ = c_ushort;
pub const __CHAR32_TYPE__ = c_uint;
pub const __UINTMAX_WIDTH__ = 64;
pub const __UINTPTR_FMTo__ = "lo";
pub const __UINTPTR_FMTu__ = "lu";
pub const __UINTPTR_FMTx__ = "lx";
pub const __UINTPTR_FMTX__ = "lX";
pub const __UINTPTR_WIDTH__ = 64;
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __FLT_HAS_DENORM__ = 1;
pub const __FLT_DIG__ = 6;
pub const __FLT_DECIMAL_DIG__ = 9;
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub const __FLT_HAS_INFINITY__ = 1;
pub const __FLT_HAS_QUIET_NAN__ = 1;
pub const __FLT_MANT_DIG__ = 24;
pub const __FLT_MAX_10_EXP__ = 38;
pub const __FLT_MAX_EXP__ = 128;
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_MIN_10_EXP__ = -37;
pub const __FLT_MIN_EXP__ = -125;
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __DBL_DENORM_MIN__ = 4.9406564584124654e-324;
pub const __DBL_HAS_DENORM__ = 1;
pub const __DBL_DIG__ = 15;
pub const __DBL_DECIMAL_DIG__ = 17;
pub const __DBL_EPSILON__ = 2.2204460492503131e-16;
pub const __DBL_HAS_INFINITY__ = 1;
pub const __DBL_HAS_QUIET_NAN__ = 1;
pub const __DBL_MANT_DIG__ = 53;
pub const __DBL_MAX_10_EXP__ = 308;
pub const __DBL_MAX_EXP__ = 1024;
pub const __DBL_MAX__ = 1.7976931348623157e+308;
pub const __DBL_MIN_10_EXP__ = -307;
pub const __DBL_MIN_EXP__ = -1021;
pub const __DBL_MIN__ = 2.2250738585072014e-308;
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 3.64519953188247460253e-4951);
pub const __LDBL_HAS_DENORM__ = 1;
pub const __LDBL_DIG__ = 18;
pub const __LDBL_DECIMAL_DIG__ = 21;
pub const __LDBL_EPSILON__ = @as(c_longdouble, 1.08420217248550443401e-19);
pub const __LDBL_HAS_INFINITY__ = 1;
pub const __LDBL_HAS_QUIET_NAN__ = 1;
pub const __LDBL_MANT_DIG__ = 64;
pub const __LDBL_MAX_10_EXP__ = 4932;
pub const __LDBL_MAX_EXP__ = 16384;
pub const __LDBL_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);
pub const __LDBL_MIN_10_EXP__ = -4931;
pub const __LDBL_MIN_EXP__ = -16381;
pub const __LDBL_MIN__ = @as(c_longdouble, 3.36210314311209350626e-4932);
pub const __POINTER_WIDTH__ = 64;
pub const __BIGGEST_ALIGNMENT__ = 16;
pub const __WINT_UNSIGNED__ = 1;
pub const __INT8_TYPE__ = i8;
pub const __INT8_FMTd__ = "hhd";
pub const __INT8_FMTi__ = "hhi";
pub const __INT16_TYPE__ = c_short;
pub const __INT16_FMTd__ = "hd";
pub const __INT16_FMTi__ = "hi";
pub const __INT32_TYPE__ = c_int;
pub const __INT32_FMTd__ = "d";
pub const __INT32_FMTi__ = "i";
pub const __INT64_FMTd__ = "ld";
pub const __INT64_FMTi__ = "li";
pub const __INT64_C_SUFFIX__ = L;
pub const __UINT8_TYPE__ = u8;
pub const __UINT8_FMTo__ = "hho";
pub const __UINT8_FMTu__ = "hhu";
pub const __UINT8_FMTx__ = "hhx";
pub const __UINT8_FMTX__ = "hhX";
pub const __UINT8_MAX__ = 255;
pub const __INT8_MAX__ = 127;
pub const __UINT16_TYPE__ = c_ushort;
pub const __UINT16_FMTo__ = "ho";
pub const __UINT16_FMTu__ = "hu";
pub const __UINT16_FMTx__ = "hx";
pub const __UINT16_FMTX__ = "hX";
pub const __UINT16_MAX__ = 65535;
pub const __INT16_MAX__ = 32767;
pub const __UINT32_TYPE__ = c_uint;
pub const __UINT32_FMTo__ = "o";
pub const __UINT32_FMTu__ = "u";
pub const __UINT32_FMTx__ = "x";
pub const __UINT32_FMTX__ = "X";
pub const __UINT32_C_SUFFIX__ = U;
pub const __UINT32_MAX__ = @as(c_uint, 4294967295);
pub const __INT32_MAX__ = 2147483647;
pub const __UINT64_FMTo__ = "lo";
pub const __UINT64_FMTu__ = "lu";
pub const __UINT64_FMTx__ = "lx";
pub const __UINT64_FMTX__ = "lX";
pub const __UINT64_C_SUFFIX__ = UL;
pub const __UINT64_MAX__ = @as(c_ulong, 18446744073709551615);
pub const __INT64_MAX__ = @as(c_long, 9223372036854775807);
pub const __INT_LEAST8_TYPE__ = i8;
pub const __INT_LEAST8_MAX__ = 127;
pub const __INT_LEAST8_FMTd__ = "hhd";
pub const __INT_LEAST8_FMTi__ = "hhi";
pub const __UINT_LEAST8_TYPE__ = u8;
pub const __UINT_LEAST8_MAX__ = 255;
pub const __UINT_LEAST8_FMTo__ = "hho";
pub const __UINT_LEAST8_FMTu__ = "hhu";
pub const __UINT_LEAST8_FMTx__ = "hhx";
pub const __UINT_LEAST8_FMTX__ = "hhX";
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __INT_LEAST16_MAX__ = 32767;
pub const __INT_LEAST16_FMTd__ = "hd";
pub const __INT_LEAST16_FMTi__ = "hi";
pub const __UINT_LEAST16_TYPE__ = c_ushort;
pub const __UINT_LEAST16_MAX__ = 65535;
pub const __UINT_LEAST16_FMTo__ = "ho";
pub const __UINT_LEAST16_FMTu__ = "hu";
pub const __UINT_LEAST16_FMTx__ = "hx";
pub const __UINT_LEAST16_FMTX__ = "hX";
pub const __INT_LEAST32_TYPE__ = c_int;
pub const __INT_LEAST32_MAX__ = 2147483647;
pub const __INT_LEAST32_FMTd__ = "d";
pub const __INT_LEAST32_FMTi__ = "i";
pub const __UINT_LEAST32_TYPE__ = c_uint;
pub const __UINT_LEAST32_MAX__ = @as(c_uint, 4294967295);
pub const __UINT_LEAST32_FMTo__ = "o";
pub const __UINT_LEAST32_FMTu__ = "u";
pub const __UINT_LEAST32_FMTx__ = "x";
pub const __UINT_LEAST32_FMTX__ = "X";
pub const __INT_LEAST64_MAX__ = @as(c_long, 9223372036854775807);
pub const __INT_LEAST64_FMTd__ = "ld";
pub const __INT_LEAST64_FMTi__ = "li";
pub const __UINT_LEAST64_MAX__ = @as(c_ulong, 18446744073709551615);
pub const __UINT_LEAST64_FMTo__ = "lo";
pub const __UINT_LEAST64_FMTu__ = "lu";
pub const __UINT_LEAST64_FMTx__ = "lx";
pub const __UINT_LEAST64_FMTX__ = "lX";
pub const __INT_FAST8_TYPE__ = i8;
pub const __INT_FAST8_MAX__ = 127;
pub const __INT_FAST8_FMTd__ = "hhd";
pub const __INT_FAST8_FMTi__ = "hhi";
pub const __UINT_FAST8_TYPE__ = u8;
pub const __UINT_FAST8_MAX__ = 255;
pub const __UINT_FAST8_FMTo__ = "hho";
pub const __UINT_FAST8_FMTu__ = "hhu";
pub const __UINT_FAST8_FMTx__ = "hhx";
pub const __UINT_FAST8_FMTX__ = "hhX";
pub const __INT_FAST16_TYPE__ = c_short;
pub const __INT_FAST16_MAX__ = 32767;
pub const __INT_FAST16_FMTd__ = "hd";
pub const __INT_FAST16_FMTi__ = "hi";
pub const __UINT_FAST16_TYPE__ = c_ushort;
pub const __UINT_FAST16_MAX__ = 65535;
pub const __UINT_FAST16_FMTo__ = "ho";
pub const __UINT_FAST16_FMTu__ = "hu";
pub const __UINT_FAST16_FMTx__ = "hx";
pub const __UINT_FAST16_FMTX__ = "hX";
pub const __INT_FAST32_TYPE__ = c_int;
pub const __INT_FAST32_MAX__ = 2147483647;
pub const __INT_FAST32_FMTd__ = "d";
pub const __INT_FAST32_FMTi__ = "i";
pub const __UINT_FAST32_TYPE__ = c_uint;
pub const __UINT_FAST32_MAX__ = @as(c_uint, 4294967295);
pub const __UINT_FAST32_FMTo__ = "o";
pub const __UINT_FAST32_FMTu__ = "u";
pub const __UINT_FAST32_FMTx__ = "x";
pub const __UINT_FAST32_FMTX__ = "X";
pub const __INT_FAST64_MAX__ = @as(c_long, 9223372036854775807);
pub const __INT_FAST64_FMTd__ = "ld";
pub const __INT_FAST64_FMTi__ = "li";
pub const __UINT_FAST64_MAX__ = @as(c_ulong, 18446744073709551615);
pub const __UINT_FAST64_FMTo__ = "lo";
pub const __UINT_FAST64_FMTu__ = "lu";
pub const __UINT_FAST64_FMTx__ = "lx";
pub const __UINT_FAST64_FMTX__ = "lX";
pub const __FINITE_MATH_ONLY__ = 0;
pub const __GNUC_STDC_INLINE__ = 1;
pub const __GCC_ATOMIC_TEST_AND_SET_TRUEVAL = 1;
pub const __CLANG_ATOMIC_BOOL_LOCK_FREE = 2;
pub const __CLANG_ATOMIC_CHAR_LOCK_FREE = 2;
pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = 2;
pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = 2;
pub const __CLANG_ATOMIC_WCHAR_T_LOCK_FREE = 2;
pub const __CLANG_ATOMIC_SHORT_LOCK_FREE = 2;
pub const __CLANG_ATOMIC_INT_LOCK_FREE = 2;
pub const __CLANG_ATOMIC_LONG_LOCK_FREE = 2;
pub const __CLANG_ATOMIC_LLONG_LOCK_FREE = 2;
pub const __CLANG_ATOMIC_POINTER_LOCK_FREE = 2;
pub const __GCC_ATOMIC_BOOL_LOCK_FREE = 2;
pub const __GCC_ATOMIC_CHAR_LOCK_FREE = 2;
pub const __GCC_ATOMIC_CHAR16_T_LOCK_FREE = 2;
pub const __GCC_ATOMIC_CHAR32_T_LOCK_FREE = 2;
pub const __GCC_ATOMIC_WCHAR_T_LOCK_FREE = 2;
pub const __GCC_ATOMIC_SHORT_LOCK_FREE = 2;
pub const __GCC_ATOMIC_INT_LOCK_FREE = 2;
pub const __GCC_ATOMIC_LONG_LOCK_FREE = 2;
pub const __GCC_ATOMIC_LLONG_LOCK_FREE = 2;
pub const __GCC_ATOMIC_POINTER_LOCK_FREE = 2;
pub const __PIC__ = 2;
pub const __pic__ = 2;
pub const __FLT_EVAL_METHOD__ = 0;
pub const __FLT_RADIX__ = 2;
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __SSP_STRONG__ = 2;
pub const __GCC_ASM_FLAG_OUTPUTS__ = 1;
pub const __code_model_small__ = 1;
pub const __amd64__ = 1;
pub const __amd64 = 1;
pub const __x86_64 = 1;
pub const __x86_64__ = 1;
pub const __SEG_GS = 1;
pub const __SEG_FS = 1;
pub const __seg_gs = __attribute__(address_space(256));
pub const __seg_fs = __attribute__(address_space(257));
pub const __corei7 = 1;
pub const __corei7__ = 1;
pub const __tune_corei7__ = 1;
pub const __NO_MATH_INLINES = 1;
pub const __AES__ = 1;
pub const __PCLMUL__ = 1;
pub const __LZCNT__ = 1;
pub const __RDRND__ = 1;
pub const __FSGSBASE__ = 1;
pub const __BMI__ = 1;
pub const __BMI2__ = 1;
pub const __POPCNT__ = 1;
pub const __PRFCHW__ = 1;
pub const __RDSEED__ = 1;
pub const __ADX__ = 1;
pub const __MOVBE__ = 1;
pub const __FMA__ = 1;
pub const __F16C__ = 1;
pub const __FXSR__ = 1;
pub const __XSAVE__ = 1;
pub const __XSAVEOPT__ = 1;
pub const __XSAVEC__ = 1;
pub const __XSAVES__ = 1;
pub const __CLFLUSHOPT__ = 1;
pub const __SGX__ = 1;
pub const __INVPCID__ = 1;
pub const __AVX2__ = 1;
pub const __AVX__ = 1;
pub const __SSE4_2__ = 1;
pub const __SSE4_1__ = 1;
pub const __SSSE3__ = 1;
pub const __SSE3__ = 1;
pub const __SSE2__ = 1;
pub const __SSE2_MATH__ = 1;
pub const __SSE__ = 1;
pub const __SSE_MATH__ = 1;
pub const __MMX__ = 1;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = 1;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = 1;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = 1;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = 1;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_16 = 1;
pub const __SIZEOF_FLOAT128__ = 16;
pub const unix = 1;
pub const __unix = 1;
pub const __unix__ = 1;
pub const linux = 1;
pub const __linux = 1;
pub const __linux__ = 1;
pub const __ELF__ = 1;
pub const __gnu_linux__ = 1;
pub const __FLOAT128__ = 1;
pub const __STDC__ = 1;
pub const __STDC_HOSTED__ = 1;
pub const __STDC_VERSION__ = @as(c_long, 201710);
pub const __STDC_UTF_16__ = 1;
pub const __STDC_UTF_32__ = 1;
pub const _DEBUG = 1;
pub inline fn va_start(ap: anytype, param: anytype) @TypeOf(__builtin_va_start(ap, param)) {
    return __builtin_va_start(ap, param);
}
pub inline fn va_end(ap: anytype) @TypeOf(__builtin_va_end(ap)) {
    return __builtin_va_end(ap);
}
pub inline fn va_arg(ap: anytype, type_1: anytype) @TypeOf(__builtin_va_arg(ap, type_1)) {
    return __builtin_va_arg(ap, type_1);
}
pub inline fn __va_copy(d: anytype, s: anytype) @TypeOf(__builtin_va_copy(d, s)) {
    return __builtin_va_copy(d, s);
}
pub inline fn va_copy(dest: anytype, src: anytype) @TypeOf(__builtin_va_copy(dest, src)) {
    return __builtin_va_copy(dest, src);
}
pub const __GNUC_VA_LIST = 1;
pub const NULL = (@import("std").meta.cast(?*c_void, 0));
pub inline fn offsetof(t: anytype, d: anytype) @TypeOf(__builtin_offsetof(t, d)) {
    return __builtin_offsetof(t, d);
}
pub const _LIBC_LIMITS_H_ = 1;
pub const _FEATURES_H = 1;
pub inline fn __GNUC_PREREQ(maj: anytype, min: anytype) @TypeOf(((__GNUC__ << 16) + __GNUC_MINOR__) >= ((maj << 16) + min)) {
    return ((__GNUC__ << 16) + __GNUC_MINOR__) >= ((maj << 16) + min);
}
pub inline fn __glibc_clang_prereq(maj: anytype, min: anytype) @TypeOf(((__clang_major__ << 16) + __clang_minor__) >= ((maj << 16) + min)) {
    return ((__clang_major__ << 16) + __clang_minor__) >= ((maj << 16) + min);
}
pub const _DEFAULT_SOURCE = 1;
pub const __GLIBC_USE_ISOC2X = 0;
pub const __USE_ISOC11 = 1;
pub const __USE_ISOC99 = 1;
pub const __USE_ISOC95 = 1;
pub const __USE_POSIX_IMPLICITLY = 1;
pub const _POSIX_SOURCE = 1;
pub const _POSIX_C_SOURCE = @as(c_long, 200809);
pub const __USE_POSIX = 1;
pub const __USE_POSIX2 = 1;
pub const __USE_POSIX199309 = 1;
pub const __USE_POSIX199506 = 1;
pub const __USE_XOPEN2K = 1;
pub const __USE_XOPEN2K8 = 1;
pub const _ATFILE_SOURCE = 1;
pub const __USE_MISC = 1;
pub const __USE_ATFILE = 1;
pub const __USE_FORTIFY_LEVEL = 0;
pub const __GLIBC_USE_DEPRECATED_GETS = 0;
pub const __GLIBC_USE_DEPRECATED_SCANF = 0;
pub const _STDC_PREDEF_H = 1;
pub const __STDC_IEC_559__ = 1;
pub const __STDC_IEC_559_COMPLEX__ = 1;
pub const __STDC_ISO_10646__ = @as(c_long, 201706);
pub const __GNU_LIBRARY__ = 6;
pub const __GLIBC__ = 2;
pub const __GLIBC_MINOR__ = 32;
pub inline fn __GLIBC_PREREQ(maj: anytype, min: anytype) @TypeOf(((__GLIBC__ << 16) + __GLIBC_MINOR__) >= ((maj << 16) + min)) {
    return ((__GLIBC__ << 16) + __GLIBC_MINOR__) >= ((maj << 16) + min);
}
pub const _SYS_CDEFS_H = 1;
pub const __THROW = __attribute__(__nothrow__ ++ __LEAF);
pub const __THROWNL = __attribute__(__nothrow__);
pub inline fn __glibc_clang_has_extension(ext: anytype) @TypeOf(__has_extension(ext)) {
    return __has_extension(ext);
}
pub inline fn __P(args: anytype) @TypeOf(args) {
    return args;
}
pub inline fn __PMT(args: anytype) @TypeOf(args) {
    return args;
}
pub inline fn __bos(ptr: anytype) @TypeOf(__builtin_object_size(ptr, __USE_FORTIFY_LEVEL > 1)) {
    return __builtin_object_size(ptr, __USE_FORTIFY_LEVEL > 1);
}
pub inline fn __bos0(ptr: anytype) @TypeOf(__builtin_object_size(ptr, 0)) {
    return __builtin_object_size(ptr, 0);
}
pub const __glibc_c99_flexarr_available = 1;
pub inline fn __ASMNAME(cname: anytype) @TypeOf(__ASMNAME2(__USER_LABEL_PREFIX__, cname)) {
    return __ASMNAME2(__USER_LABEL_PREFIX__, cname);
}
pub const __attribute_malloc__ = __attribute__(__malloc__);
pub const __attribute_pure__ = __attribute__(__pure__);
pub const __attribute_const__ = __attribute__(__const__);
pub const __attribute_used__ = __attribute__(__used__);
pub const __attribute_noinline__ = __attribute__(__noinline__);
pub const __attribute_deprecated__ = __attribute__(__deprecated__);
pub inline fn __attribute_deprecated_msg__(msg: anytype) @TypeOf(__attribute__(__deprecated__(msg))) {
    return __attribute__(__deprecated__(msg));
}
pub inline fn __attribute_format_arg__(x: anytype) @TypeOf(__attribute__(__format_arg__(x))) {
    return __attribute__(__format_arg__(x));
}
pub inline fn __attribute_format_strfmon__(a: anytype, b: anytype) @TypeOf(__attribute__(__format__(__strfmon__, a, b))) {
    return __attribute__(__format__(__strfmon__, a, b));
}
pub inline fn __nonnull(params: anytype) @TypeOf(__attribute__(__nonnull__ ++ params)) {
    return __attribute__(__nonnull__ ++ params);
}
pub const __attribute_warn_unused_result__ = __attribute__(__warn_unused_result__);
pub const __always_inline = __inline ++ __attribute__(__always_inline__);
pub const __fortify_function = __extern_always_inline ++ __attribute_artificial__;
pub const __restrict_arr = __restrict;
pub inline fn __glibc_unlikely(cond: anytype) @TypeOf(__builtin_expect(cond, 0)) {
    return __builtin_expect(cond, 0);
}
pub inline fn __glibc_likely(cond: anytype) @TypeOf(__builtin_expect(cond, 1)) {
    return __builtin_expect(cond, 1);
}
pub inline fn __glibc_has_attribute(attr: anytype) @TypeOf(__has_attribute(attr)) {
    return __has_attribute(attr);
}
pub const __WORDSIZE = 64;
pub const __WORDSIZE_TIME64_COMPAT32 = 1;
pub const __SYSCALL_WORDSIZE = 64;
pub const __LDOUBLE_REDIRECTS_TO_FLOAT128_ABI = 0;
pub inline fn __LDBL_REDIR1(name: anytype, proto: anytype, alias: anytype) @TypeOf(name ++ proto) {
    return name ++ proto;
}
pub inline fn __LDBL_REDIR(name: anytype, proto: anytype) @TypeOf(name ++ proto) {
    return name ++ proto;
}
pub inline fn __LDBL_REDIR1_NTH(name: anytype, proto: anytype, alias: anytype) @TypeOf(name ++ proto ++ __THROW) {
    return name ++ proto ++ __THROW;
}
pub inline fn __LDBL_REDIR_NTH(name: anytype, proto: anytype) @TypeOf(name ++ proto ++ __THROW) {
    return name ++ proto ++ __THROW;
}
pub inline fn __REDIRECT_LDBL(name: anytype, proto: anytype, alias: anytype) @TypeOf(__REDIRECT(name, proto, alias)) {
    return __REDIRECT(name, proto, alias);
}
pub inline fn __REDIRECT_NTH_LDBL(name: anytype, proto: anytype, alias: anytype) @TypeOf(__REDIRECT_NTH(name, proto, alias)) {
    return __REDIRECT_NTH(name, proto, alias);
}
pub inline fn __glibc_macro_warning(message: anytype) @TypeOf(__glibc_macro_warning1(GCC ++ warning ++ message)) {
    return __glibc_macro_warning1(GCC ++ warning ++ message);
}
pub const __HAVE_GENERIC_SELECTION = 1;
pub const __USE_EXTERN_INLINES = 1;
pub const __GLIBC_USE_LIB_EXT2 = 0;
pub const __GLIBC_USE_IEC_60559_BFP_EXT = 0;
pub const __GLIBC_USE_IEC_60559_BFP_EXT_C2X = 0;
pub const __GLIBC_USE_IEC_60559_FUNCS_EXT = 0;
pub const __GLIBC_USE_IEC_60559_FUNCS_EXT_C2X = 0;
pub const __GLIBC_USE_IEC_60559_TYPES_EXT = 0;
pub const MB_LEN_MAX = 16;
pub const LLONG_MIN = -LLONG_MAX - 1;
pub const LLONG_MAX = __LONG_LONG_MAX__;
pub const ULLONG_MAX = (LLONG_MAX * @as(c_ulonglong, 2)) + 1;
pub const _BITS_POSIX1_LIM_H = 1;
pub const _POSIX_AIO_LISTIO_MAX = 2;
pub const _POSIX_AIO_MAX = 1;
pub const _POSIX_ARG_MAX = 4096;
pub const _POSIX_CHILD_MAX = 25;
pub const _POSIX_DELAYTIMER_MAX = 32;
pub const _POSIX_HOST_NAME_MAX = 255;
pub const _POSIX_LINK_MAX = 8;
pub const _POSIX_LOGIN_NAME_MAX = 9;
pub const _POSIX_MAX_CANON = 255;
pub const _POSIX_MAX_INPUT = 255;
pub const _POSIX_MQ_OPEN_MAX = 8;
pub const _POSIX_MQ_PRIO_MAX = 32;
pub const _POSIX_NAME_MAX = 14;
pub const _POSIX_NGROUPS_MAX = 8;
pub const _POSIX_OPEN_MAX = 20;
pub const _POSIX_PATH_MAX = 256;
pub const _POSIX_PIPE_BUF = 512;
pub const _POSIX_RE_DUP_MAX = 255;
pub const _POSIX_RTSIG_MAX = 8;
pub const _POSIX_SEM_NSEMS_MAX = 256;
pub const _POSIX_SEM_VALUE_MAX = 32767;
pub const _POSIX_SIGQUEUE_MAX = 32;
pub const _POSIX_SSIZE_MAX = 32767;
pub const _POSIX_STREAM_MAX = 8;
pub const _POSIX_SYMLINK_MAX = 255;
pub const _POSIX_SYMLOOP_MAX = 8;
pub const _POSIX_TIMER_MAX = 32;
pub const _POSIX_TTY_NAME_MAX = 9;
pub const _POSIX_TZNAME_MAX = 6;
pub const _POSIX_CLOCKRES_MIN = 20000000;
pub const NR_OPEN = 1024;
pub const NGROUPS_MAX = 65536;
pub const ARG_MAX = 131072;
pub const LINK_MAX = 127;
pub const MAX_CANON = 255;
pub const MAX_INPUT = 255;
pub const NAME_MAX = 255;
pub const PATH_MAX = 4096;
pub const PIPE_BUF = 4096;
pub const XATTR_NAME_MAX = 255;
pub const XATTR_SIZE_MAX = 65536;
pub const XATTR_LIST_MAX = 65536;
pub const RTSIG_MAX = 32;
pub const _POSIX_THREAD_KEYS_MAX = 128;
pub const PTHREAD_KEYS_MAX = 1024;
pub const _POSIX_THREAD_DESTRUCTOR_ITERATIONS = 4;
pub const PTHREAD_DESTRUCTOR_ITERATIONS = _POSIX_THREAD_DESTRUCTOR_ITERATIONS;
pub const _POSIX_THREAD_THREADS_MAX = 64;
pub const AIO_PRIO_DELTA_MAX = 20;
pub const PTHREAD_STACK_MIN = 16384;
pub const DELAYTIMER_MAX = 2147483647;
pub const TTY_NAME_MAX = 32;
pub const LOGIN_NAME_MAX = 256;
pub const HOST_NAME_MAX = 64;
pub const MQ_PRIO_MAX = 32768;
pub const SEM_VALUE_MAX = 2147483647;
pub const SSIZE_MAX = LONG_MAX;
pub const _BITS_POSIX2_LIM_H = 1;
pub const _POSIX2_BC_BASE_MAX = 99;
pub const _POSIX2_BC_DIM_MAX = 2048;
pub const _POSIX2_BC_SCALE_MAX = 99;
pub const _POSIX2_BC_STRING_MAX = 1000;
pub const _POSIX2_COLL_WEIGHTS_MAX = 2;
pub const _POSIX2_EXPR_NEST_MAX = 32;
pub const _POSIX2_LINE_MAX = 2048;
pub const _POSIX2_RE_DUP_MAX = 255;
pub const _POSIX2_CHARCLASS_NAME_MAX = 14;
pub const BC_BASE_MAX = _POSIX2_BC_BASE_MAX;
pub const BC_DIM_MAX = _POSIX2_BC_DIM_MAX;
pub const BC_SCALE_MAX = _POSIX2_BC_SCALE_MAX;
pub const BC_STRING_MAX = _POSIX2_BC_STRING_MAX;
pub const COLL_WEIGHTS_MAX = 255;
pub const EXPR_NEST_MAX = _POSIX2_EXPR_NEST_MAX;
pub const LINE_MAX = _POSIX2_LINE_MAX;
pub const CHARCLASS_NAME_MAX = 2048;
pub const RE_DUP_MAX = 0x7fff;
pub const SCHAR_MAX = __SCHAR_MAX__;
pub const SHRT_MAX = __SHRT_MAX__;
pub const INT_MAX = __INT_MAX__;
pub const LONG_MAX = __LONG_MAX__;
pub const SCHAR_MIN = -__SCHAR_MAX__ - 1;
pub const SHRT_MIN = -__SHRT_MAX__ - 1;
pub const INT_MIN = -__INT_MAX__ - 1;
pub const LONG_MIN = -__LONG_MAX__ - @as(c_long, 1);
pub const UCHAR_MAX = (__SCHAR_MAX__ * 2) + 1;
pub const USHRT_MAX = (__SHRT_MAX__ * 2) + 1;
pub const UINT_MAX = (__INT_MAX__ * @as(c_uint, 2)) + @as(c_uint, 1);
pub const ULONG_MAX = (__LONG_MAX__ * @as(c_ulong, 2)) + @as(c_ulong, 1);
pub const CHAR_BIT = __CHAR_BIT__;
pub const CHAR_MIN = SCHAR_MIN;
pub const CHAR_MAX = __SCHAR_MAX__;
pub const LUAI_MAXCSTACK = 2000;
pub const LUAI_IS32INT = (UINT_MAX >> 30) >= 3;
pub const LUA_INT_INT = 1;
pub const LUA_INT_LONG = 2;
pub const LUA_INT_LONGLONG = 3;
pub const LUA_FLOAT_FLOAT = 1;
pub const LUA_FLOAT_DOUBLE = 2;
pub const LUA_FLOAT_LONGDOUBLE = 3;
pub const LUA_INT_TYPE = LUA_INT_LONGLONG;
pub const LUA_FLOAT_TYPE = LUA_FLOAT_DOUBLE;
pub const LUA_PATH_SEP = ";";
pub const LUA_PATH_MARK = "?";
pub const LUA_EXEC_DIR = "!";
pub const LUA_VDIR = LUA_VERSION_MAJOR ++ "." ++ LUA_VERSION_MINOR;
pub const LUA_ROOT = "/usr/";
pub const LUA_LDIR = LUA_ROOT ++ "share/lua/" ++ LUA_VDIR ++ "/";
pub const LUA_CDIR = LUA_ROOT ++ "lib/lua/" ++ LUA_VDIR ++ "/";
pub const LUA_PATH_DEFAULT = LUA_LDIR ++ "?.lua;" ++ LUA_LDIR ++ "?/init.lua;" ++ LUA_CDIR ++ "?.lua;" ++ LUA_CDIR ++ "?/init.lua;" ++ "./?.lua;" ++ "./?/init.lua";
pub const LUA_CPATH_DEFAULT = LUA_CDIR ++ "?.so;" ++ LUA_CDIR ++ "loadall.so;" ++ "./?.so";
pub const LUA_DIRSEP = "/";
pub const LUALIB_API = LUA_API;
pub const LUAMOD_API = LUA_API;
pub inline fn LUAI_DDEC(dec: anytype) @TypeOf(LUAI_FUNC ++ dec) {
    return LUAI_FUNC ++ dec;
}
pub inline fn l_floor(x: anytype) @TypeOf(l_mathop(floor)(x)) {
    return l_mathop(floor)(x);
}
pub inline fn lua_number2str(s: anytype, sz: anytype, n: anytype) @TypeOf(l_sprintf(s, sz, LUA_NUMBER_FMT, (@import("std").meta.cast(LUAI_UACNUMBER, n)))) {
    return l_sprintf(s, sz, LUA_NUMBER_FMT, (@import("std").meta.cast(LUAI_UACNUMBER, n)));
}
pub const LUA_NUMBER = f64;
pub const LUAI_UACNUMBER = f64;
pub const LUA_NUMBER_FRMLEN = "";
pub const LUA_NUMBER_FMT = "%.14g";
pub inline fn l_mathop(op: anytype) @TypeOf(op) {
    return op;
}
pub inline fn lua_str2number(s: anytype, p: anytype) @TypeOf(strtod(s, p)) {
    return strtod(s, p);
}
pub const LUA_INTEGER_FMT = "%" ++ LUA_INTEGER_FRMLEN ++ "d";
pub const LUAI_UACINT = LUA_INTEGER;
pub inline fn lua_integer2str(s: anytype, sz: anytype, n: anytype) @TypeOf(l_sprintf(s, sz, LUA_INTEGER_FMT, (@import("std").meta.cast(LUAI_UACINT, n)))) {
    return l_sprintf(s, sz, LUA_INTEGER_FMT, (@import("std").meta.cast(LUAI_UACINT, n)));
}
pub const LUA_UNSIGNED = c_uint ++ LUAI_UACINT;
pub const LUA_UNSIGNEDBITS = @import("std").meta.sizeof(LUA_UNSIGNED) * CHAR_BIT;
pub const LUA_INTEGER_FRMLEN = "ll";
pub const LUA_MAXINTEGER = LLONG_MAX;
pub const LUA_MININTEGER = LLONG_MIN;
pub const LUA_MAXUNSIGNED = ULLONG_MAX;
pub inline fn l_sprintf(s: anytype, sz: anytype, f: anytype, i: anytype) @TypeOf(snprintf(s, sz, f, i)) {
    return snprintf(s, sz, f, i);
}
pub inline fn lua_strx2number(s: anytype, p: anytype) @TypeOf(lua_str2number(s, p)) {
    return lua_str2number(s, p);
}
pub inline fn lua_pointer2str(buff: anytype, sz: anytype, p: anytype) @TypeOf(l_sprintf(buff, sz, "%p", p)) {
    return l_sprintf(buff, sz, "%p", p);
}
pub inline fn lua_number2strx(L: anytype, b: anytype, sz: anytype, f: anytype, n: anytype) @TypeOf((@import("std").meta.cast(c_void, blk: {
    _ = L;
    break :blk l_sprintf(b, sz, f, (@import("std").meta.cast(LUAI_UACNUMBER, n)));
}))) {
    return (@import("std").meta.cast(c_void, blk: {
        _ = L;
        break :blk l_sprintf(b, sz, f, (@import("std").meta.cast(LUAI_UACNUMBER, n)));
    }));
}
pub const LUA_KCONTEXT = ptrdiff_t;
pub const _STDINT_H = 1;
pub const _BITS_TYPES_H = 1;
pub const __TIMESIZE = __WORDSIZE;
pub const __S32_TYPE = c_int;
pub const __U32_TYPE = c_uint;
pub const __SLONG32_TYPE = c_int;
pub const __ULONG32_TYPE = c_uint;
pub const _BITS_TYPESIZES_H = 1;
pub const __SYSCALL_SLONG_TYPE = __SLONGWORD_TYPE;
pub const __SYSCALL_ULONG_TYPE = __ULONGWORD_TYPE;
pub const __DEV_T_TYPE = __UQUAD_TYPE;
pub const __UID_T_TYPE = __U32_TYPE;
pub const __GID_T_TYPE = __U32_TYPE;
pub const __INO_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __INO64_T_TYPE = __UQUAD_TYPE;
pub const __MODE_T_TYPE = __U32_TYPE;
pub const __NLINK_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSWORD_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __OFF_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __OFF64_T_TYPE = __SQUAD_TYPE;
pub const __PID_T_TYPE = __S32_TYPE;
pub const __RLIM_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __RLIM64_T_TYPE = __UQUAD_TYPE;
pub const __BLKCNT_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __BLKCNT64_T_TYPE = __SQUAD_TYPE;
pub const __FSBLKCNT_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSBLKCNT64_T_TYPE = __UQUAD_TYPE;
pub const __FSFILCNT_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSFILCNT64_T_TYPE = __UQUAD_TYPE;
pub const __ID_T_TYPE = __U32_TYPE;
pub const __CLOCK_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __TIME_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __USECONDS_T_TYPE = __U32_TYPE;
pub const __SUSECONDS_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __SUSECONDS64_T_TYPE = __SQUAD_TYPE;
pub const __DADDR_T_TYPE = __S32_TYPE;
pub const __KEY_T_TYPE = __S32_TYPE;
pub const __CLOCKID_T_TYPE = __S32_TYPE;
pub const __BLKSIZE_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __SSIZE_T_TYPE = __SWORD_TYPE;
pub const __CPU_MASK_TYPE = __SYSCALL_ULONG_TYPE;
pub const __OFF_T_MATCHES_OFF64_T = 1;
pub const __INO_T_MATCHES_INO64_T = 1;
pub const __RLIM_T_MATCHES_RLIM64_T = 1;
pub const __STATFS_MATCHES_STATFS64 = 1;
pub const __KERNEL_OLD_TIMEVAL_MATCHES_TIMEVAL64 = 1;
pub const __FD_SETSIZE = 1024;
pub const _BITS_TIME64_H = 1;
pub const __TIME64_T_TYPE = __TIME_T_TYPE;
pub const _BITS_WCHAR_H = 1;
pub const __WCHAR_MAX = __WCHAR_MAX__;
pub const __WCHAR_MIN = -__WCHAR_MAX - 1;
pub const _BITS_STDINT_INTN_H = 1;
pub const _BITS_STDINT_UINTN_H = 1;
pub const INT8_MIN = -128;
pub const INT16_MIN = -32767 - 1;
pub const INT32_MIN = -2147483647 - 1;
pub const INT64_MIN = -__INT64_C(9223372036854775807) - 1;
pub const INT8_MAX = 127;
pub const INT16_MAX = 32767;
pub const INT32_MAX = 2147483647;
pub const INT64_MAX = __INT64_C(9223372036854775807);
pub const UINT8_MAX = 255;
pub const UINT16_MAX = 65535;
pub const UINT32_MAX = @as(c_uint, 4294967295);
pub const UINT64_MAX = __UINT64_C(18446744073709551615);
pub const INT_LEAST8_MIN = -128;
pub const INT_LEAST16_MIN = -32767 - 1;
pub const INT_LEAST32_MIN = -2147483647 - 1;
pub const INT_LEAST64_MIN = -__INT64_C(9223372036854775807) - 1;
pub const INT_LEAST8_MAX = 127;
pub const INT_LEAST16_MAX = 32767;
pub const INT_LEAST32_MAX = 2147483647;
pub const INT_LEAST64_MAX = __INT64_C(9223372036854775807);
pub const UINT_LEAST8_MAX = 255;
pub const UINT_LEAST16_MAX = 65535;
pub const UINT_LEAST32_MAX = @as(c_uint, 4294967295);
pub const UINT_LEAST64_MAX = __UINT64_C(18446744073709551615);
pub const INT_FAST8_MIN = -128;
pub const INT_FAST16_MIN = -@as(c_long, 9223372036854775807) - 1;
pub const INT_FAST32_MIN = -@as(c_long, 9223372036854775807) - 1;
pub const INT_FAST64_MIN = -__INT64_C(9223372036854775807) - 1;
pub const INT_FAST8_MAX = 127;
pub const INT_FAST16_MAX = @as(c_long, 9223372036854775807);
pub const INT_FAST32_MAX = @as(c_long, 9223372036854775807);
pub const INT_FAST64_MAX = __INT64_C(9223372036854775807);
pub const UINT_FAST8_MAX = 255;
pub const UINT_FAST16_MAX = @as(c_ulong, 18446744073709551615);
pub const UINT_FAST32_MAX = @as(c_ulong, 18446744073709551615);
pub const UINT_FAST64_MAX = __UINT64_C(18446744073709551615);
pub const INTPTR_MIN = -@as(c_long, 9223372036854775807) - 1;
pub const INTPTR_MAX = @as(c_long, 9223372036854775807);
pub const UINTPTR_MAX = @as(c_ulong, 18446744073709551615);
pub const INTMAX_MIN = -__INT64_C(9223372036854775807) - 1;
pub const INTMAX_MAX = __INT64_C(9223372036854775807);
pub const UINTMAX_MAX = __UINT64_C(18446744073709551615);
pub const PTRDIFF_MIN = -@as(c_long, 9223372036854775807) - 1;
pub const PTRDIFF_MAX = @as(c_long, 9223372036854775807);
pub const SIG_ATOMIC_MIN = -2147483647 - 1;
pub const SIG_ATOMIC_MAX = 2147483647;
pub const SIZE_MAX = @as(c_ulong, 18446744073709551615);
pub const WCHAR_MIN = __WCHAR_MIN;
pub const WCHAR_MAX = __WCHAR_MAX;
pub const WINT_MIN = @as(c_uint, 0);
pub const WINT_MAX = @as(c_uint, 4294967295);
pub inline fn INT8_C(c: anytype) @TypeOf(c) {
    return c;
}
pub inline fn INT16_C(c: anytype) @TypeOf(c) {
    return c;
}
pub inline fn INT32_C(c: anytype) @TypeOf(c) {
    return c;
}
pub inline fn UINT8_C(c: anytype) @TypeOf(c) {
    return c;
}
pub inline fn UINT16_C(c: anytype) @TypeOf(c) {
    return c;
}
pub const LUAI_MAXSTACK = 1000000;
pub const LUA_EXTRASPACE = @import("std").meta.sizeof(?*c_void);
pub const LUA_IDSIZE = 60;
pub const LUAL_BUFFERSIZE = (@import("std").meta.cast(c_int, (16 * @import("std").meta.sizeof(?*c_void)) * @import("std").meta.sizeof(lua_Number)));
pub const LUA_VERSION_MAJOR = "5";
pub const LUA_VERSION_MINOR = "4";
pub const LUA_VERSION_RELEASE = "0";
pub const LUA_VERSION_NUM = 504;
pub const LUA_VERSION_RELEASE_NUM = (LUA_VERSION_NUM * 100) + 0;
pub const LUA_VERSION = "Lua " ++ LUA_VERSION_MAJOR ++ "." ++ LUA_VERSION_MINOR;
pub const LUA_RELEASE = LUA_VERSION ++ "." ++ LUA_VERSION_RELEASE;
pub const LUA_COPYRIGHT = LUA_RELEASE ++ "  Copyright (C) 1994-2020 Lua.org, PUC-Rio";
pub const LUA_AUTHORS = "R. Ierusalimschy, L. H. de Figueiredo, W. Celes";
pub const LUA_SIGNATURE = "\x1bLua";
pub const LUA_MULTRET = -1;
pub const LUA_REGISTRYINDEX = -LUAI_MAXSTACK - 1000;
pub inline fn lua_upvalueindex(i: anytype) @TypeOf(LUA_REGISTRYINDEX - i) {
    return LUA_REGISTRYINDEX - i;
}
pub const LUA_OK = 0;
pub const LUA_YIELD = 1;
pub const LUA_ERRRUN = 2;
pub const LUA_ERRSYNTAX = 3;
pub const LUA_ERRMEM = 4;
pub const LUA_ERRERR = 5;
pub const LUA_TNONE = -1;
pub const LUA_TNIL = 0;
pub const LUA_TBOOLEAN = 1;
pub const LUA_TLIGHTUSERDATA = 2;
pub const LUA_TNUMBER = 3;
pub const LUA_TSTRING = 4;
pub const LUA_TTABLE = 5;
pub const LUA_TFUNCTION = 6;
pub const LUA_TUSERDATA = 7;
pub const LUA_TTHREAD = 8;
pub const LUA_NUMTYPES = 9;
pub const LUA_MINSTACK = 20;
pub const LUA_RIDX_MAINTHREAD = 1;
pub const LUA_RIDX_GLOBALS = 2;
pub const LUA_RIDX_LAST = LUA_RIDX_GLOBALS;
pub const LUA_OPADD = 0;
pub const LUA_OPSUB = 1;
pub const LUA_OPMUL = 2;
pub const LUA_OPMOD = 3;
pub const LUA_OPPOW = 4;
pub const LUA_OPDIV = 5;
pub const LUA_OPIDIV = 6;
pub const LUA_OPBAND = 7;
pub const LUA_OPBOR = 8;
pub const LUA_OPBXOR = 9;
pub const LUA_OPSHL = 10;
pub const LUA_OPSHR = 11;
pub const LUA_OPUNM = 12;
pub const LUA_OPBNOT = 13;
pub const LUA_OPEQ = 0;
pub const LUA_OPLT = 1;
pub const LUA_OPLE = 2;
pub inline fn lua_call(L: anytype, n: anytype, r: anytype) @TypeOf(lua_callk(L, n, r, 0, NULL)) {
    return lua_callk(L, n, r, 0, NULL);
}
pub inline fn lua_pcall(L: anytype, n: anytype, r: anytype, f: anytype) @TypeOf(lua_pcallk(L, n, r, f, 0, NULL)) {
    return lua_pcallk(L, n, r, f, 0, NULL);
}
pub inline fn lua_yield(L: anytype, n: anytype) @TypeOf(lua_yieldk(L, n, 0, NULL)) {
    return lua_yieldk(L, n, 0, NULL);
}
pub const LUA_GCSTOP = 0;
pub const LUA_GCRESTART = 1;
pub const LUA_GCCOLLECT = 2;
pub const LUA_GCCOUNT = 3;
pub const LUA_GCCOUNTB = 4;
pub const LUA_GCSTEP = 5;
pub const LUA_GCSETPAUSE = 6;
pub const LUA_GCSETSTEPMUL = 7;
pub const LUA_GCISRUNNING = 9;
pub const LUA_GCGEN = 10;
pub const LUA_GCINC = 11;
pub inline fn lua_getextraspace(L: anytype) @TypeOf((@import("std").meta.cast(?*c_void, (@import("std").meta.cast([*c]u8, L)) - LUA_EXTRASPACE))) {
    return (@import("std").meta.cast(?*c_void, (@import("std").meta.cast([*c]u8, L)) - LUA_EXTRASPACE));
}
pub inline fn lua_tonumber(L: anytype, i: anytype) @TypeOf(lua_tonumberx(L, i, NULL)) {
    return lua_tonumberx(L, i, NULL);
}
pub inline fn lua_tointeger(L: anytype, i: anytype) @TypeOf(lua_tointegerx(L, i, NULL)) {
    return lua_tointegerx(L, i, NULL);
}
pub inline fn lua_pop(L: anytype, n: anytype) @TypeOf(lua_settop(L, -n - 1)) {
    return lua_settop(L, -n - 1);
}
pub inline fn lua_newtable(L: anytype) @TypeOf(lua_createtable(L, 0, 0)) {
    return lua_createtable(L, 0, 0);
}
pub inline fn lua_register(L: anytype, n: anytype, f: anytype) @TypeOf(lua_setglobal(L, n)) {
    return blk: {
        _ = lua_pushcfunction(L, f);
        break :blk lua_setglobal(L, n);
    };
}
pub inline fn lua_pushcfunction(L: anytype, f: anytype) @TypeOf(lua_pushcclosure(L, f, 0)) {
    return lua_pushcclosure(L, f, 0);
}
pub inline fn lua_isfunction(L: anytype, n: anytype) @TypeOf(lua_type(L, n) == LUA_TFUNCTION) {
    return lua_type(L, n) == LUA_TFUNCTION;
}
pub inline fn lua_istable(L: anytype, n: anytype) @TypeOf(lua_type(L, n) == LUA_TTABLE) {
    return lua_type(L, n) == LUA_TTABLE;
}
pub inline fn lua_islightuserdata(L: anytype, n: anytype) @TypeOf(lua_type(L, n) == LUA_TLIGHTUSERDATA) {
    return lua_type(L, n) == LUA_TLIGHTUSERDATA;
}
pub inline fn lua_isnil(L: anytype, n: anytype) @TypeOf(lua_type(L, n) == LUA_TNIL) {
    return lua_type(L, n) == LUA_TNIL;
}
pub inline fn lua_isboolean(L: anytype, n: anytype) @TypeOf(lua_type(L, n) == LUA_TBOOLEAN) {
    return lua_type(L, n) == LUA_TBOOLEAN;
}
pub inline fn lua_isthread(L: anytype, n: anytype) @TypeOf(lua_type(L, n) == LUA_TTHREAD) {
    return lua_type(L, n) == LUA_TTHREAD;
}
pub inline fn lua_isnone(L: anytype, n: anytype) @TypeOf(lua_type(L, n) == LUA_TNONE) {
    return lua_type(L, n) == LUA_TNONE;
}
pub inline fn lua_isnoneornil(L: anytype, n: anytype) @TypeOf(lua_type(L, n) <= 0) {
    return lua_type(L, n) <= 0;
}
pub inline fn lua_pushliteral(L: anytype, s: anytype) @TypeOf(lua_pushstring(L, "" ++ s)) {
    return lua_pushstring(L, "" ++ s);
}
pub inline fn lua_pushglobaltable(L: anytype) @TypeOf((@import("std").meta.cast(c_void, lua_rawgeti(L, LUA_REGISTRYINDEX, LUA_RIDX_GLOBALS)))) {
    return (@import("std").meta.cast(c_void, lua_rawgeti(L, LUA_REGISTRYINDEX, LUA_RIDX_GLOBALS)));
}
pub inline fn lua_tostring(L: anytype, i: anytype) @TypeOf(lua_tolstring(L, i, NULL)) {
    return lua_tolstring(L, i, NULL);
}
pub inline fn lua_insert(L: anytype, idx: anytype) @TypeOf(lua_rotate(L, idx, 1)) {
    return lua_rotate(L, idx, 1);
}
pub inline fn lua_remove(L: anytype, idx: anytype) @TypeOf(lua_pop(L, 1)) {
    return blk: {
        _ = lua_rotate(L, idx, -1);
        break :blk lua_pop(L, 1);
    };
}
pub inline fn lua_replace(L: anytype, idx: anytype) @TypeOf(lua_pop(L, 1)) {
    return blk: {
        _ = lua_copy(L, -1, idx);
        break :blk lua_pop(L, 1);
    };
}
pub inline fn lua_newuserdata(L: anytype, s: anytype) @TypeOf(lua_newuserdatauv(L, s, 1)) {
    return lua_newuserdatauv(L, s, 1);
}
pub inline fn lua_getuservalue(L: anytype, idx: anytype) @TypeOf(lua_getiuservalue(L, idx, 1)) {
    return lua_getiuservalue(L, idx, 1);
}
pub inline fn lua_setuservalue(L: anytype, idx: anytype) @TypeOf(lua_setiuservalue(L, idx, 1)) {
    return lua_setiuservalue(L, idx, 1);
}
pub const LUA_NUMTAGS = LUA_NUMTYPES;
pub const LUA_HOOKCALL = 0;
pub const LUA_HOOKRET = 1;
pub const LUA_HOOKLINE = 2;
pub const LUA_HOOKCOUNT = 3;
pub const LUA_HOOKTAILCALL = 4;
pub const LUA_MASKCALL = 1 << LUA_HOOKCALL;
pub const LUA_MASKRET = 1 << LUA_HOOKRET;
pub const LUA_MASKLINE = 1 << LUA_HOOKLINE;
pub const LUA_MASKCOUNT = 1 << LUA_HOOKCOUNT;
pub const LUA_VERSUFFIX = "_" ++ LUA_VERSION_MAJOR ++ "_" ++ LUA_VERSION_MINOR;
pub const LUA_COLIBNAME = "coroutine";
pub const LUA_TABLIBNAME = "table";
pub const LUA_IOLIBNAME = "io";
pub const LUA_OSLIBNAME = "os";
pub const LUA_STRLIBNAME = "string";
pub const LUA_UTF8LIBNAME = "utf8";
pub const LUA_MATHLIBNAME = "math";
pub const LUA_DBLIBNAME = "debug";
pub const LUA_LOADLIBNAME = "package";
pub inline fn lua_assert(x: anytype) @TypeOf((@import("std").meta.cast(c_void, 0))) {
    return (@import("std").meta.cast(c_void, 0));
}
pub const _STDIO_H = 1;
pub const _____fpos_t_defined = 1;
pub const ____mbstate_t_defined = 1;
pub const _____fpos64_t_defined = 1;
pub const ____FILE_defined = 1;
pub const __FILE_defined = 1;
pub const __struct_FILE_defined = 1;
pub const _IO_EOF_SEEN = 0x0010;
pub inline fn __feof_unlocked_body(_fp: anytype) @TypeOf(((_fp.*._flags) & _IO_EOF_SEEN) != 0) {
    return ((_fp.*._flags) & _IO_EOF_SEEN) != 0;
}
pub const _IO_ERR_SEEN = 0x0020;
pub inline fn __ferror_unlocked_body(_fp: anytype) @TypeOf(((_fp.*._flags) & _IO_ERR_SEEN) != 0) {
    return ((_fp.*._flags) & _IO_ERR_SEEN) != 0;
}
pub const _IO_USER_LOCK = 0x8000;
pub const _IOFBF = 0;
pub const _IOLBF = 1;
pub const _IONBF = 2;
pub const BUFSIZ = 8192;
pub const EOF = -1;
pub const SEEK_SET = 0;
pub const SEEK_CUR = 1;
pub const SEEK_END = 2;
pub const P_tmpdir = "/tmp";
pub const _BITS_STDIO_LIM_H = 1;
pub const L_tmpnam = 20;
pub const TMP_MAX = 238328;
pub const FILENAME_MAX = 4096;
pub const L_ctermid = 9;
pub const FOPEN_MAX = 16;
pub const __HAVE_FLOAT128 = 0;
pub const __HAVE_DISTINCT_FLOAT128 = 0;
pub const __HAVE_FLOAT64X = 1;
pub const __HAVE_FLOAT64X_LONG_DOUBLE = 1;
pub const __HAVE_FLOAT16 = 0;
pub const __HAVE_FLOAT32 = 1;
pub const __HAVE_FLOAT64 = 1;
pub const __HAVE_FLOAT32X = 1;
pub const __HAVE_FLOAT128X = 0;
pub const __HAVE_DISTINCT_FLOAT16 = __HAVE_FLOAT16;
pub const __HAVE_DISTINCT_FLOAT32 = 0;
pub const __HAVE_DISTINCT_FLOAT64 = 0;
pub const __HAVE_DISTINCT_FLOAT32X = 0;
pub const __HAVE_DISTINCT_FLOAT64X = 0;
pub const __HAVE_DISTINCT_FLOAT128X = __HAVE_FLOAT128X;
pub const __HAVE_FLOAT128_UNLIKE_LDBL = (__HAVE_DISTINCT_FLOAT128 != 0) and (__LDBL_MANT_DIG__ != 113);
pub const __HAVE_FLOATN_NOT_TYPEDEF = 0;
pub inline fn __f64(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __f32x(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __builtin_nanf32(x: anytype) @TypeOf(__builtin_nanf(x)) {
    return __builtin_nanf(x);
}
pub inline fn __builtin_nansf32(x: anytype) @TypeOf(__builtin_nansf(x)) {
    return __builtin_nansf(x);
}
pub inline fn __builtin_nanf64(x: anytype) @TypeOf(__builtin_nan(x)) {
    return __builtin_nan(x);
}
pub inline fn __builtin_nansf64(x: anytype) @TypeOf(__builtin_nans(x)) {
    return __builtin_nans(x);
}
pub inline fn __builtin_nanf32x(x: anytype) @TypeOf(__builtin_nan(x)) {
    return __builtin_nan(x);
}
pub inline fn __builtin_nansf32x(x: anytype) @TypeOf(__builtin_nans(x)) {
    return __builtin_nans(x);
}
pub inline fn __builtin_nanf64x(x: anytype) @TypeOf(__builtin_nanl(x)) {
    return __builtin_nanl(x);
}
pub inline fn __builtin_nansf64x(x: anytype) @TypeOf(__builtin_nansl(x)) {
    return __builtin_nansl(x);
}
pub const _BITS_STDIO_H = 1;
pub const __STDIO_INLINE = __extern_inline;
pub const LUA_GNAME = "_G";
pub const LUA_ERRFILE = LUA_ERRERR + 1;
pub const LUA_LOADED_TABLE = "_LOADED";
pub const LUA_PRELOAD_TABLE = "_PRELOAD";
pub const LUAL_NUMSIZES = (@import("std").meta.sizeof(lua_Integer) * 16) + @import("std").meta.sizeof(lua_Number);
pub inline fn luaL_checkversion(L: anytype) @TypeOf(luaL_checkversion_(L, LUA_VERSION_NUM, LUAL_NUMSIZES)) {
    return luaL_checkversion_(L, LUA_VERSION_NUM, LUAL_NUMSIZES);
}
pub const LUA_NOREF = -2;
pub const LUA_REFNIL = -1;
pub inline fn luaL_loadfile(L: anytype, f: anytype) @TypeOf(luaL_loadfilex(L, f, NULL)) {
    return luaL_loadfilex(L, f, NULL);
}
pub inline fn luaL_newlibtable(L: anytype, l: anytype) @TypeOf(lua_createtable(L, 0, (@import("std").meta.sizeof(l) / @import("std").meta.sizeof(l[0])) - 1)) {
    return lua_createtable(L, 0, (@import("std").meta.sizeof(l) / @import("std").meta.sizeof(l[0])) - 1);
}
pub inline fn luaL_newlib(L: anytype, l: anytype) @TypeOf(luaL_setfuncs(L, l, 0)) {
    return blk: {
        _ = luaL_checkversion(L);
        _ = luaL_newlibtable(L, l);
        break :blk luaL_setfuncs(L, l, 0);
    };
}
pub inline fn luaL_argcheck(L: anytype, cond: anytype, arg: anytype, extramsg: anytype) @TypeOf((@import("std").meta.cast(c_void, (cond != 0) or (luaL_argerror(L, arg, extramsg) != 0)))) {
    return (@import("std").meta.cast(c_void, (cond != 0) or (luaL_argerror(L, arg, extramsg) != 0)));
}
pub inline fn luaL_argexpected(L: anytype, cond: anytype, arg: anytype, tname: anytype) @TypeOf((@import("std").meta.cast(c_void, (cond != 0) or (luaL_typeerror(L, arg, tname) != 0)))) {
    return (@import("std").meta.cast(c_void, (cond != 0) or (luaL_typeerror(L, arg, tname) != 0)));
}
pub inline fn luaL_checkstring(L: anytype, n: anytype) @TypeOf(luaL_checklstring(L, n, NULL)) {
    return luaL_checklstring(L, n, NULL);
}
pub inline fn luaL_optstring(L: anytype, n: anytype, d: anytype) @TypeOf(luaL_optlstring(L, n, d, NULL)) {
    return luaL_optlstring(L, n, d, NULL);
}
pub inline fn luaL_typename(L: anytype, i: anytype) @TypeOf(lua_typename(L, lua_type(L, i))) {
    return lua_typename(L, lua_type(L, i));
}
pub inline fn luaL_dofile(L: anytype, @"fn": anytype) @TypeOf((luaL_loadfile(L, @"fn") != 0) or (lua_pcall(L, 0, LUA_MULTRET, 0) != 0)) {
    return (luaL_loadfile(L, @"fn") != 0) or (lua_pcall(L, 0, LUA_MULTRET, 0) != 0);
}
pub inline fn luaL_dostring(L: anytype, s: anytype) @TypeOf((luaL_loadstring(L, s) != 0) or (lua_pcall(L, 0, LUA_MULTRET, 0) != 0)) {
    return (luaL_loadstring(L, s) != 0) or (lua_pcall(L, 0, LUA_MULTRET, 0) != 0);
}
pub inline fn luaL_getmetatable(L: anytype, n: anytype) @TypeOf(lua_getfield(L, LUA_REGISTRYINDEX, n)) {
    return lua_getfield(L, LUA_REGISTRYINDEX, n);
}
pub inline fn luaL_opt(L: anytype, f: anytype, n: anytype, d: anytype) @TypeOf(if (lua_isnoneornil(L, n)) d else f(L, n)) {
    return if (lua_isnoneornil(L, n)) d else f(L, n);
}
pub inline fn luaL_loadbuffer(L: anytype, s: anytype, sz: anytype, n: anytype) @TypeOf(luaL_loadbufferx(L, s, sz, n, NULL)) {
    return luaL_loadbufferx(L, s, sz, n, NULL);
}
pub inline fn luaL_pushfail(L: anytype) @TypeOf(lua_pushnil(L)) {
    return lua_pushnil(L);
}
pub inline fn luaL_bufflen(bf: anytype) @TypeOf(bf.*.n) {
    return bf.*.n;
}
pub inline fn luaL_buffaddr(bf: anytype) @TypeOf(bf.*.b) {
    return bf.*.b;
}
pub inline fn luaL_prepbuffer(B: anytype) @TypeOf(luaL_prepbuffsize(B, LUAL_BUFFERSIZE)) {
    return luaL_prepbuffsize(B, LUAL_BUFFERSIZE);
}
pub const LUA_FILEHANDLE = "FILE*";
pub inline fn lua_writestring(s: anytype, l: anytype) @TypeOf(fwrite(s, @import("std").meta.sizeof(u8), l, stdout)) {
    return fwrite(s, @import("std").meta.sizeof(u8), l, stdout);
}
pub inline fn lua_writeline() @TypeOf(fflush(stdout)) {
    return blk: {
        _ = lua_writestring("\n", 1);
        break :blk fflush(stdout);
    };
}
pub inline fn lua_writestringerror(s: anytype, p: anytype) @TypeOf(fflush(stderr)) {
    return blk: {
        _ = fprintf(stderr, s, p);
        break :blk fflush(stderr);
    };
}
pub const __va_list_tag = struct___va_list_tag;
pub const CallInfo = struct_CallInfo;
pub const _G_fpos_t = struct__G_fpos_t;
pub const _G_fpos64_t = struct__G_fpos64_t;
pub const _IO_marker = struct__IO_marker;
pub const _IO_codecvt = struct__IO_codecvt;
pub const _IO_wide_data = struct__IO_wide_data;
pub const _IO_FILE = struct__IO_FILE;
