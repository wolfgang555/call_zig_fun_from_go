const std = @import("std");

pub export fn greeting_from_zig() void {
    std.debug.print("你好 zig!\n", .{});
}

pub export fn zig_add(a: i32, b: i32) i32 {
    return a + b;
}
