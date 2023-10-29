<p align="center">
    <img src="https://github.com/pgurnig/aws-cli/blob/main/images/aws-cli-simply-presented.png" alt="simply-presented"/>
</p>

## AWS CodeCommit and KMS

When you create a repository, a managed key is associated to the repository for that region. The key encrypts data at rest in the repository.

Based on observation only, the managed key is created when a first repository is created for a given Region. The key is **not** deleted when the associated repos are deleted.

The description on the managed key is this:
*Default key that protects my CodeCommit repositories when no other key is defined*

Further:
*This AWS managed key is created, managed and used on your behalf by an AWS service. You have permission to view the AWS managed keys in your account and audit their use in AWS CloudTrail logs. However, you cannot change any properties of AWS managed keys, rotate them, change their key policies, or schedule them for deletion.*
