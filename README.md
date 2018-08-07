# terraform-aws-terrablog

The terraform-aws-terrablog module is a simple [Terraform](https://www.terraform.io/) [module](https://www.terraform.io/docs/modules/index.html) that provisions storage and CDN hosting for static websites on [Amazon Web Services](https://aws.amazon.com/).

Althought the module is named `terrablog` it can host any static content.

# Infrastructure Provisioned

This module creates an [S3](https://aws.amazon.com/s3/?nc2=h_m1) bucket to store the content, a [CloudFront](https://aws.amazon.com/cloudfront/?nc2=h_m1) distribution for optimized content delivery, a [Route 53](https://aws.amazon.com/route53/?nc2=h_m1) DNS entry pointing to the CloudFront distribution, an SSL Certificate via [Certificate Manager](https://aws.amazon.com/certificate-manager/?nc2=h_m1), and all necessary [Identify and Access Management](https://aws.amazon.com/iam/?nc2=h_m1) roles/policies.

Users of the module are responsible for publishing the actual content to the created S3 bucket.

# Using the Module

There is a complete example in the `examples` directory. You can simply copy the example directory and modify it by changing the values.
