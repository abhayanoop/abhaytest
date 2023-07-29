#!/bin/bash

wget -q -O - https://github.com/bridgecrewio/yor/releases/download/0.1.183/yor_0.1.183_linux_amd64.tar.gz | tar -xvz -C /tmp
/tmp/yor tag -d . --tag-groups git --skip-tags git_file,git_org,git_modifiers,git_last_modified_by,git_last_modified_at --parsers Terraform --tag-prefix precize_ --tag-local-modules false

git config --global user.name 'My name'
git config --global user.email 'your-username@users.noreply.github.com'
git commit -am "Automated"
git push
