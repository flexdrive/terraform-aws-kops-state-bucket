## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| acl | The canned ACL to apply to the S3 bucket | string | `private` | no |
| attributes | Additional attributes (e.g. `1`) | list | `<list>` | no |
| block_public_access_enabled | Block all public access from bucket level | string | `true` | no |
| delimiter | Delimiter to be used between `namespace`, `stage`, `name`, and `attributes` | string | `-` | no |
| force_destroy | A boolean that indicates all objects should be deleted from the bucket so that the bucket can be destroyed without errors. These objects are not recoverable | string | `false` | no |
| name | Name (e.g. `kops-state`) | string | `kops-state` | no |
| namespace | Namespace (e.g. `eg` or `cp`) | string | - | yes |
| region | AWS Region the S3 bucket should reside in | string | `us-east-1` | no |
| stage | Stage (e.g. `prod`, `dev`, `staging`) | string | - | yes |
| tags | Additional tags (e.g. map(`BusinessUnit`,`XYZ`) | map | `<map>` | no |

## Outputs

| Name | Description |
|------|-------------|
| bucket_arn | S3 bucket ARN |
| bucket_domain_name | S3 bucket domain name |
| bucket_id | S3 bucket ID |
| bucket_name | S3 bucket name |
| bucket_region | S3 bucket region |

