locals {
  base_rules = {
    "Errors" = {
      "description"        = "Lambda Function had VAR errors",
      "period"             = "120",
      "stat"               = "Sum",
      "threshold"          = "2",
      "operator"           = "GreaterThanOrEqualToThreshold",
      "ad_operator"        = "LessThanLowerOrGreaterThanUpperThreshold",
      "return_data"        = true,
      "treat_missing_data" = "ignore"
    }
  }
  incoming_rule_overwrite = {
    "Errors" = {
      "threshold" = "4"
    }
  }
  base_rules_keys     = keys(local.base_rules)
  incoming_rules_keys = keys(local.incoming_rule_overwrite)
  metric_list         = distinct(concat(local.base_rules_keys, local.incoming_rules_keys))
  final_map           = { for metric in local.metric_list : metric => { for k, v in local.base_rules[metric] : k => try(local.incoming_rule_overwrite[metric]["${k}"], v) } }
}

output "merge_result" {
  value = merge(local.base_rules, local.incoming_rule_overwrite)
}

output "new_keys" {
  value = local.metric_list
}

output "map_parameters_overwrite" {
  value = local.final_map
}