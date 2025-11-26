-- LZ Executor Hub Loader
local scripts = {
    ["Fish It Lite"] = "https://raw.githubusercontent.com/LizarusGamers/lz-executor/main/fish_it_lite.lua",
    ["Fast Walk"] = "https://raw.githubusercontent.com/LizarusGamers/lz-executor/main/fast_walk.lua"
}

for name, url in pairs(scripts) do
    warn("Loading: " .. name)
    pcall(function()
        loadstring(game:HttpGet(url))()
    end)
end

print("✨ LZ Executor: All scripts loaded!")
