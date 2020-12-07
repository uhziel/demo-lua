--evnt并没有在任何地方声明就使用了

function _enum(name, t)
	rawset(_G, name, t)
	_G[name] = t
end

_enum("abc", 1)

function Demo(event)
	print(abc)
end

function Demo1(event)
	print(even)
end

function Demo2()
	local abc = nil
	print(ab)
end

Demo()
Demo1()
Demo2()
