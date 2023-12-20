local function write_pixel_array_(file, line, delimiter)
    for _, elt in ipairs(line) do
        file:write(elt[1] .. delimiter .. elt[2] .. delimiter .. elt[3] .. '\n')
    end
end

local function write_pixel_matrix_(file, t, delimiter)
    for _, line in ipairs(t) do
        write_pixel_array_(file, line, delimiter)
    end
end

return {
    write_pixel_matrix = function(file, t, delimiter)
        assert(file, "Expected a file, got " .. tostring(file))
        write_pixel_matrix_(file, t, delimiter)

        return true
    end,
    write_pixel_array = function(file, line, delimiter)
        assert(file, "Expected a file, got " .. tostring(file))
        write_pixel_array_(file, line, delimiter)

        return true
    end
}