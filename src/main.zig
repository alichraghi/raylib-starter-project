const std = @import("std");
const c = @cImport(@cInclude("raylib.h"));

pub fn main() !void {
    c.InitWindow(800, 450, "raylib [core] example - basic window");
    defer c.CloseWindow();

    c.SetTargetFPS(60);
    while (!c.WindowShouldClose()) {
        c.BeginDrawing();
        c.ClearBackground(c.RAYWHITE);
        c.DrawText("Congrats! You created your first window!", 190, 200, 20, c.LIGHTGRAY);
        c.EndDrawing();
    }
}
