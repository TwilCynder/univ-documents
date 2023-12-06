return {
    write_pixel_matrix = function(filename, t, delimiter)
        local file = io.open(filename, "w+")
        if not file then
            return false
        end

        for _, line in ipairs(t) do
            for _, elt in ipairs(line) do
                file:write(elt[1] .. delimiter .. elt[2] .. delimiter .. elt[3] .. '\n')
            end
        end

        return true
    end
}