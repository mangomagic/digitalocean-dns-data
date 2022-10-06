# output "all" {
#   value = data.digitalocean_records.all
# }

output "a_records" {
  value = local.a_records
}

output "cname_records" {
  value = local.cname_records
}

output "mx_records" {
  value = local.mx_records
}

output "txt_records" {
  value = local.txt_records
}
