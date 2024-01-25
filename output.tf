output "string_output" {
  value = local.string_local
}

output "number_output" {
  value = local.number_local
}

output "list_output" {
  value = local.list_local
}

output "map_output" {
  value = local.map_local
}

output "object_output" {
  value = local.object_local
}

output "random_id" {
    value = random_id.server.id
}