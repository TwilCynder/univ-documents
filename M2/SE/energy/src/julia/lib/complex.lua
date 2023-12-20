local check={}

local complex
function check.complex(c,i)
  local t=type(c)
  assert(getmetatable(c)==complex,"bad argument #%d (complex number expected, got %s)",i,t)
end

function check.number(n,i)
  assert(tonumber(n),"bad argument #%d (number expected, got %s)",i,type(n))
end

function complex_Distance(x1, x2)
    local r = x2.r - x1.r
    local i = x2.i - x1.i

    return math.sqrt(r * r + i * i)
end

complex = {
    __eq = function(x1, x2)
        check.complex(x1,1)
        check.complex(x2,2)
        return x1.r == x2.r and x1.i == x2.i 
    end,

    __add = function(x1, x2)
        if type(x1) == "number" then
            return Newcomplex(x1 + x2.r, x2.i)
        elseif type(x2) == "number" then
            return Newcomplex(x2 + x1.r, x1.i)
        else
            check.complex(x1,1)
            check.complex(x2,2)
            return Newcomplex(x1.r + x2.r, x1.i + x2.i)
        end
    end,

    __sub = function(x1, x2)
        if type(x1) == "number" then
            return Newcomplex(x1 - x2.r, x2.i)
        elseif type(x2) == "number" then
            return Newcomplex(x1.r - x2, x1.i)
        else
            check.complex(x1,1)
            check.complex(x2,2)
            return Newcomplex(x1.r - x2.r, x1.i - x2.i)
        end
    end,

    __mul = function(x1, x2)
        if type(x1) == "number" then
            return Newcomplex(x1 * x2.r, x1 * x2.i)
        elseif type(x2) == "number" then
            return Newcomplex(x1.r * x2, x1.r * x2)
        else
            check.complex(x1,1)
            check.complex(x2,2)
            return Newcomplex(x1.r*x2.r-x1.i*x2.i,x1.r*x2.i+x1.i*x2.r)
        end
    end,
    __div = function(x1, x2)
        if type(x1) == "number" then
            local divider = x2.r * x2.r + x2.i * x2.i
            return Newcomplex(x1 * x2.r / divider, -x1 * x2.i / divider)
        elseif type(x2) == "number" then
            return Newcomplex(x1.r * x2, x1.r * x2)
        else
            check.complex(x1,1)
            check.complex(x2,2)
            local divider = x2.r * x2.r + x2.i * x2.i
            return Newcomplex(
                (x1.r * x2.r + x1.i * x2.i) / divider,
                (x1.i * x2.r - x1.r * x2.i) / divider
            )
        end
    end,
    __tostring = function (self)
        return string.format("%s + %si", self.r, self.i)
    end,

    absolute = function (x)
        local r = x.r
        local i = x.i

        if r==0 then
          return math.abs(i)
        end
        if i==0 then
          return math.abs(r)
        end
        
        return math.sqrt(r * r + i * i)

    end,

    absSqr = function(x)
        local r = x.r
        local i = x.i
        return r * r + i * i
    end,

    square = function (x)
        return Newcomplex(x.r*x.r-x.i*x.i,x.r*x.i+x.i*x.r)
    end,

    distance = function (x1, x2)
        return complex_Distance(x1, x2)
    end,

    opt_squareSelf = function(x)
        local r = x.r
        local i = x.i
        
        x.r = r*r-i*i
        x.i = 2*r*i
    end

}
complex.__index = complex

function type(x)
    return getmetatable(x) == complex and "complex" or type(x)
end

function Newcomplex(r, i)
    return setmetatable({
        r = r,
        i = i
    }, complex)
end

math.i = Newcomplex(0, 1)

return Newcomplex, check, complex