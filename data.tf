data "digitalocean_records" "all" {
  domain = var.domain
}

data "digitalocean_records" "a" {
  domain = var.domain
  filter {
    key    = "type"
    values = ["A"]
  }
}

data "digitalocean_records" "cname" {
  domain = var.domain
  filter {
    key    = "type"
    values = ["CNAME"]
  }
}

data "digitalocean_records" "mx" {
  domain = var.domain
  filter {
    key    = "type"
    values = ["MX"]
  }
}

data "digitalocean_records" "txt" {
  domain = var.domain
  filter {
    key    = "type"
    values = ["TXT"]
  }
}
