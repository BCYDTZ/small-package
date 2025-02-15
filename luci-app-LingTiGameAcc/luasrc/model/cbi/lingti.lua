require("luci.util")

mp = Map("lingti")
mp.title = translate("LingTi Game Accelerator")
mp.description = translate("A Paid Game Acceleration service")

mp:section(SimpleSection).template  = "lingti/lingti_status"

s = mp:section(TypedSection, "lingti")
s.anonymous = true
s.addremove = false

o = s:option(Flag, "enabled", translate("Enable"))
o.default = 0
o.optional = false

mp:section(SimpleSection).template  = "lingti/lingti_qcode"

return mp
