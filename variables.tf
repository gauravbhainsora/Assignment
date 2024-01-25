variable "string_var" {
  type    = string
  default = "Hello, India!"
}

variable "number_var" {
  type    = number
  default = 100000000000000
}

variable "list_var" {
  type    = list
  default = ["Modi", "Pappu", "Yogi"]
}

variable "map_var" {
  type = map(string)
  default = {
    key1 = "Khali"
    key3 = "Undertaker"
  }
}

variable "object_var" {
  type = object({
    name    = string
    age     = number
    address = string
  })
  default = {
    name    = "Gaurav Bhainsora"
    age     = 22
    address = "Bharat"
  }
}

variable "ami_id" {
    type = string
}