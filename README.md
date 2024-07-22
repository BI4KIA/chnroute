
ip段信息取自 [misakaio](https://github.com/misakaio/chnroutes2)

/file remove [find name="CN.rsc"]
/tool fetch url="https://cdn.jsdelivr.net/gh/GitHubd3b7c/chnroute@main/CN.rsc"
:if ([:len [/file find name=CN.rsc]] > 0) do={
/ip firewall address-list remove [find comment="AS4809"]
/import CN.rsc
}
