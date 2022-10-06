locals {
  # Generating the uids are unapologetically hacky but works for most cases 
  a_records = [
    for a in data.digitalocean_records.a.records :
    {
      uid  = format("%s_%s", a["name"] == "@" ? trim(replace(var.domain, ".", "_"), "_") : a["name"], a["id"])
      name = a["name"]
      ip   = a["value"]
      ttl  = a["ttl"]
    }
  ]

  cname_records = [
    for cname in data.digitalocean_records.cname.records :
    {
      uid    = format("%s_%s", replace(replace(cname["name"], ".", "_"), "__", "_"), cname["id"])
      name   = cname["name"]
      domain = cname["value"]
      ttl    = cname["ttl"]
    }
  ]

  mx_records = [
    for mx in data.digitalocean_records.mx.records :
    {
      uid      = format("%s_%s", replace(mx["value"], ".", "_"), mx["id"])
      domain   = mx["name"]
      hostname = mx["value"]
      priority = mx["priority"]
      ttl      = mx["ttl"]
    }
  ]

  txt_records = [
    for txt in data.digitalocean_records.txt.records :
    {
      uid      = format("%s_%s", lower(regex("\\w+", split("-", split(" ", trimprefix(txt["value"], "v="))[0])[0])), txt["id"])
      hostname = txt["name"]
      txt      = txt["value"]
      ttl      = txt["ttl"]
    }
  ]
}
