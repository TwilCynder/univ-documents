local Newcomplex, check, complex = require ("lib.complex")
local csv = require("lib.csv")

local taille = 200
local iterationmax = 100
local minX = -1
local maxX = 1
local minY = -1
local maxY = 1

local a = -0.8
local b = 0.156


local stepX = (maxX - minX) / taille
local stepY = (maxY - minY) / taille
local c = Newcomplex(a, b)

local pixels =  {}

for y = maxY, minY, -stepY do
    local line = {}
    
    for x = minX, maxX, stepX do
    
        local i = 1
        local z = Newcomplex(y, x)

        while i <= iterationmax and z:absSqr() <= 4 do
            z = (z * z) + c

            i = i + 1
        end

        local pixel
        if i > iterationmax then
            pixel = {0, 0, 0}
        else
            pixel = {(4*i) % 256, 2*i, (6*i) % 256}
        end
        table.insert(line, pixel)
    end
    table.insert(pixels, line)
end

csv.write_pixel_matrix("out.csv", pixels, '\t')