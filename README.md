/file remove [find name="CN.rsc"]

/tool fetch url="https://raw.githubusercontent.com/BI4KIA/chnroute/main/CN.rsc"

:if ([:len [/file find name=CN.rsc]] > 0) do={
/ip firewall address-list remove [find comment="CN_list"]

/import CN.rsc
}

:log error ("All_China List update")
