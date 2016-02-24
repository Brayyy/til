# Display a pretty Git commit tree

Running git log works, but sometimes it's helpful to see the code branches, and looking at GitHub / GitLab isn't an option.

```bash
git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
```

This will generate something like:

```
*   efd314f - (HEAD, origin/master, master) Merge branch 'release/2016-02-10_1825' (2 days ago) <Bray>
|\  
| * 8f844f4 - (origin/develop, develop) #110791 Incorrect header parameter (2 days ago) <Bray>
* |   99e7925 - Merge branch 'release/2016-02-10_1818' (2 days ago) <Bray>
|\ \  
| |/  
| * 75f258e - #110791 Adding &er_ttl GET var to allow VAST response to be cached (2 days ago) <Bray>
* |   a4ddcbb - Merge branch 'release/2016-02-08_1818' (4 days ago) <Bray>
|\ \  
| |/  
| *   d6c571e - Merge branch 'feature/newExtraJson' into develop (2 weeks ago) <Bray>
| |\  
| | * 465dc12 - Added generic VAST 3+ icon support, data sourced from extra_json (2 weeks ago) <Bray>
| | * 149d209 - Logic is confusing, moving to adopt better structure (2 weeks ago) <Bray>
| | * 2673215 - Disabling <Extensions>, as nothing ever used it (2 weeks ago) <Bray>
...
```