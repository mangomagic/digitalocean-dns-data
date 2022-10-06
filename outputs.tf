# output "all" {
#   value = data.digitalocean_records.all
# }

output "a_data" {
  value = local.a_records
}

output "cname_data" {
  value = local.cname_records
}

output "mx_data" {
  value = local.mx_records
}

output "txt_data" {
  value = local.txt_records
}
