<!-- 














  ** DO NOT EDIT THIS FILE
  ** 
  ** This file was automatically generated by the `build-harness`. 
  ** 1) Make all changes to `README.yaml` 
  ** 2) Run `make init` (you only need to do this once)
  ** 3) Run`make readme` to rebuild this file. 
  **
  ** (We maintain HUNDREDS of open source projects. This is how we maintain our sanity.)
  **















  -->

# terraform-aws-kops-state-bucket [![Latest Release](https://img.shields.io/github/release/flexdrive/terraform-aws-kops-state-bucket.svg)](https://github.com/flexdrive/terraform-aws-kops-state-bucket/releases/latest)


Terraform module to provision the state bucket for `kops`

The module supports the following:

1. Forced server-side encryption at rest for the S3 bucket
2. S3 bucket versioning to allow for `kops` state recovery in the case of accidental deletions or human errors
3. Block public access in bucket level by default


---

[![Terraform Open Source Modules](https://docs.cloudposse.com/images/terraform-open-source-modules.svg)][terraform_modules]



It's 100% Open Source and licensed under the [APACHE2](LICENSE).


## Usage


**IMPORTANT:** The `master` branch is used in `source` just as an example. In your code, do not pin to `master` because there may be breaking changes between releases.
Instead pin to the release tag (e.g. `?ref=tags/x.y.z`) of one of our [latest releases](https://github.com/flexdrive/terraform-aws-kops-state-bucket/releases).


It will also create an S3 bucket with the name `fdpfm-<tenant>-kops-state` for storing `kops` state.

```hcl
module "kops" {
  source           = "git::https://github.com/flexdrive/terraform-aws-kops-state-bucket.git?ref=master"
  namespace        = "eg"
  stage            = "prod"
  name             = "kops-state"
  region           = "us-east-1"
}
```






## Makefile Targets
```
Available targets:

  help                                Help screen
  help/all                            Display help for all targets
  help/short                          This help short screen
  lint                                Lint terraform code

```
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




## Related Projects

Check out these related projects.

- [terraform-aws-kops-state-backend](https://github.com/cloudposse/terraform-aws-kops-state-backend) - Terraform module to provision dependencies for `kops` (config S3 bucket & DNS zone).



## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/flexdrive/terraform-aws-kops-state-bucket/issues) to report any bugs or file feature requests.

### Developing

If you are interested in being a contributor and want to get involved in developing this project or [help out](https://cpco.io/help-out) with our other projects, we would love to hear from you! Shoot us an [email][email].

In general, PRs are welcome. We follow the typical "fork-and-pull" Git workflow.

 1. **Fork** the repo on GitHub
 2. **Clone** the project to your own machine
 3. **Commit** changes to your own branch
 4. **Push** your work back up to your fork
 5. Submit a **Pull Request** so that we can review your changes

**NOTE:** Be sure to merge the latest changes from "upstream" before making a pull request!


## License 

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0) 

See [LICENSE](LICENSE) for full details.

    Licensed to the Apache Software Foundation (ASF) under one
    or more contributor license agreements.  See the NOTICE file
    distributed with this work for additional information
    regarding copyright ownership.  The ASF licenses this file
    to you under the Apache License, Version 2.0 (the
    "License"); you may not use this file except in compliance
    with the License.  You may obtain a copy of the License at

      https://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing,
    software distributed under the License is distributed on an
    "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
    KIND, either express or implied.  See the License for the
    specific language governing permissions and limitations
    under the License.









### Contributors

|  [![Tega McKinney][tegamckinney_avatar]][tegamckinney_homepage]<br/>[Tega McKinney][tegamckinney_homepage] |
|---|

  [tegamckinney_homepage]: https://github.com/tegamckinney
  [tegamckinney_avatar]: https://img.cloudposse.com/150x150/https://github.com/tegamckinney.png
