#!/bin/bash
# Create a new IAM Group called Admininstrators
aws iam create-group --group-name Admininstrators

# Attach a policy using the information from above
aws iam attach-group-policy --group-name Admininstrators --policy-arn arn:aws:iam::aws:policy/AdministratorAccess

# Create a user, add a temporary password to the user-name, then attach the user to the Admininstrators group
aws iam create-user --user-name dieuwer.de.hertoghe
aws iam create-login-profile --user-name dieuwer.de.hertoghe --password abcd4321$ --password-reset-required
aws iam add-user-to-group --group-name Admininstrators --user-name dieuwer.de.hertoghe

# Undo it
aws iam remove-user-from-group --group-name Admininstrators --user-name dieuwer.de.hertoghe
aws iam detach-group-policy --group-name Admininstrators --policy-arn arn:aws:iam::aws:policy/AdministratorAccess
aws iam delete-group --group-name Admininstrators 
aws iam delete-login-profile --user-name dieuwer.de.hertoghe
aws iam delete-user --user-name dieuwer.de.hertoghe
