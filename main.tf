locals {
  string_local = var.string_var
  number_local = var.number_var
  list_local   = var.list_var
  map_local    = var.map_var
  object_local = var.object_var
}

resource "local_file" "file1" {
  content = local.string_local
  filename = "${path.module}/ment1/string"
}

resource "local_file" "file2" {
  content = local.number_local
  filename = "${path.module}/ment1/number"
}

resource "local_file" "file3" {
  content = local.list_local[0]
  filename = "${path.module}/ment2/list"
}

resource "local_file" "file4" {
  content = local.map_local.key3
  filename = "${path.module}/ment2/map"
}

resource "local_file" "file5" {
  content = local.object_local.name
  filename = "${path.module}/ment3/object"
}

resource "random_id" "server" {
  keepers = {
    # Generate a new id each time we switch to a new AMI id
    ami_id = var.ami_id
  }

  byte_length = 8
}

