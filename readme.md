# Module - Azure Email Communication Service
[![COE](https://img.shields.io/badge/Created%20By-CCoE-blue)]()
[![HCL](https://img.shields.io/badge/language-HCL-blueviolet)](https://www.terraform.io/)
[![Azure](https://img.shields.io/badge/provider-Azure-blue)](https://registry.terraform.io/providers/hashicorp/azurerm/latest)

Module developed to standardize the Azure Email Communication Service Creation.

## Compatibility Matrix

| Module Version | Terraform Version | AzureRM Version |
|----------------|-------------------| --------------- |
| v1.0.0         | v1.5.2            | 3.64.0          |

## Specifying a version

To avoid that your code get updates automatically, is mandatory to set the version using the `source` option. 
By defining the `?ref=***` in the the URL, you can define the version of the module.

Note: The `?ref=***` refers a tag on the git module repo.

## Use case

```hcl
module "<ces-system-env-001>" {
  source = "git::https://github.com/danilomnds/terraform-azurerm-email-communication-service?ref=v1.0.0" 
  name = "<ces-system-env-001>"
  location = "<your-region>"
  resource_group_name = "<resource-group>"
  data_location = "<your data location>"
  # optional
  azure_ad_groups = ["group id 1","group id 2"]
  tags = {
    key1 = "value1"
    key2 = "value2"    
  }  
}
output "ces-system-env-001-name" {
  value = module.<ces-system-env-001>.name
}
output "ces-system-env-001-id" {
  value = module.<ces-system-env-001>.id
}
```

## Input variables

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name | email communication service name | `string` | n/a | `Yes` |
| resource_group_name | resource group name where the resource(s) will be created | `string` | n/a | `Yes` |
| data_location | the location where the communication service stores its data at rest | `string` | `United States` | No |
| tags | tags for the resource | `map(string)` | `{}` | No |
| azure_ad_groups | list of azure AD groups that will be granted the Application Insights Component Contributor role  | `list` | `[]` | No |

## Output variables

| Name | Description |
|------|-------------|
| name | email communication services name |
| id | email communication services id |

## Documentation

Terraform Azure Email Communication Services: <br>
[https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/email_communication_service](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/email_communication_service)<br>