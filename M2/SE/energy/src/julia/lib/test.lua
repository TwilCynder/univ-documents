local Newcomplex = require("complex")
local t = Newcomplex(-8, 0.7)

print(t * t)
print(t:square())
t:opt_squareSelf()
print(t)