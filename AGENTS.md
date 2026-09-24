# Repository workflow

When the user says that the original/main mod was updated (for example,
"основной мод обновился"), check the current branch first. If it is not
`main`, reply `Переключитесь вручную на ветку main` and stop. On `main`, run:

```powershell
.\scripts\sync-original-mod.ps1
```

This instruction authorizes copying changed tracked upstream files and deleting
tracked files that no longer exist upstream. Leave the result unstaged and
uncommitted for review in the IDE.

Do not print `git status`, a changed-file list, or `git diff --stat` after the
import. Do not stage, commit, merge, or push the imported files. Never modify
`filelist.json` as part of this workflow.
