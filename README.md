# Read Digital Ocean DNS Data Terraform Module

Create a data structure from existing Digital Ocean DNS records for use with the digitalocean-dns Terraform module.

### Usage

```
$ terraform init
$ terraform apply -var domain=example.com -auto-approve
```

You can show the data structures with:

```
$ terraform output
```

or individually as follows:
```
$ terraform output a_data
$ terraform output cname_data
$ terraform output mx_data
$ terrafomr output txt_data 
```

Example output:
```
$ terraform output
a_data = [
  {
    "ip" = "192.160.0.1"
    "name" = "@"
    "ttl" = 3600
    "uid" = "example_com_104890788"
  },
]
cname_data = [
  {
    "domain" = "@"
    "name" = "www"
    "ttl" = 43200
    "uid" = "www_345669174"
  },
]
mx_data = [
  {
    "domain" = "@"
    "hostname" = "mail.protonmail.ch"
    "priority" = 10
    "ttl" = 14400
    "uid" = "mail_protonmail_ch_113891855"
  },
  {
    "domain" = "@"
    "hostname" = "mailsec.protonmail.ch"
    "priority" = 20
    "ttl" = 14400
    "uid" = "mailsec_protonmail_ch_153755558"
  },
]
txt_data = [
  {
    "hostname" = "@"
    "ttl" = 300
    "txt" = "protonmail-verification=1234"
    "uid" = "protonmail_104591722"
  },
  {
    "hostname" = "_dmarc"
    "ttl" = 3600
    "txt" = "v=DMARC1; p=none"
    "uid" = "dmarc1_103892719"
  },
  {
    "hostname" = "@"
    "ttl" = 3600
    "txt" = "v=spf1 include:_spf.protonmail.ch mx ~all"
    "uid" = "spf1_145755603"
  },
]
```