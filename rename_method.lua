Account = {balance = 0}

function Account:new (o)
    o = o or {}
    self.__index = self
    setmetatable(o, self)
    return o
end

function Account:deposit2 (v)
    local abc = self.balance + 1
    self.balance = self.balance + v
end

function Account:withdraw (v)
    if v > self.balance then error"insufficient funds" end
    self.balance = self.balance - v
end

local john = Account:new()
john:deposit2(10)
print(" balance:", john.balance)

return Account
