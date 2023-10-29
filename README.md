<p align="center">
    <img src="images/aws-cli-simply-presented.png" alt="simply-presented"/>
</p>

## Introduction

`AWS CLI - Simply Presented` is a collection of scripts illustrating the power of the AWS CLI.

Scripts generally have two versions:

- basic: typically not idempotent; these scripts illustrate concepts cleanly and clearly with little or no error handling
- idempotent: includes some error handling; this also introduces some complexity, but is likely a better script

## Basic Scripts
A script may be little more than a single command. For example, in KMS:
```
aws kms list-keys --region us-east-2
```

The value of the script is that it's very simple and illustrates usage of the CLI. A lot of online documentation may contain several paragraphs providing background, what KMS is, etc. These scripts assume that the reader already knows this and wants a straightforward starting example.
