variable "base_map" {
  default = {
    cpu = {
      description = ""
      text        = "hey"
      stat        = "average"
      threshold   = "10"
    }
  }
}


locals {
  custom = {
    memory = {
      description = "Memory new description"
      text        = "45678910"
      stat        = "Average"
      threshold   = "10101010"
    },
    cpu = {
      description = "CPU new description"
      stat        = "Sum"
    }
  }

  key_list = keys(var.base_map)

  common_variables_map = { for metric in local.key_list : metric => { for k, v in var.base_map[metric] : k => try(local.custom[metric]["${k}"], v) } }
}

output "old_map" {
  value = local.custom
}

output "new_map" {
  value = local.common_variables_map
}
