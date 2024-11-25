locals {
  apps = {
    myapp = {
      slack_channel  = "private"
      email_endpoint = "mstack"
    }
  }

  email_enable = { for k, v in local.apps : k => v if lookup(v, "email_endpoint", "") != "" } # New list with value if it is set as true
}

output "test" {
  value = local.email_enable
}
