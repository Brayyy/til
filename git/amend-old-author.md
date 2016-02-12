# Amend / replace author on old commits

Replace author on old commits, retain commit message and date (mostly works)

```bash
# Set user name and email in local .git/config
git config user.name NewUserName
git config user.email user@address.com

# Where to start making changes, change “pick" to “edit” where we want to change things
git rebase -i aa93421 

# Amend author, and pull in date from current git log matching the point in time we are at
git commit --amend --reset-author --date "$(git log |head -3|tail -1| sed s/Date:\ \ \ //g)" -C $(git log |head -n1|cut -d\  -f2)

# Move on to the next commit
git rebase --continue

# Repeat git commit --amend / --continue as needed
```
