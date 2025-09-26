# Migration from 0.5 to 0.6

Version 0.5:

* All legacy cachi2 mentions are replaced with a more generic prefetch word
  * `cachi2.env` -> `prefetch.env`
  * `cachi2.repo` -> `prefetch.repo`
  * `/var/workdir/cachi2` -> `/var/workdir/prefetch`
  * `$(workspaces.source.path)/cachi2/output` -> `$(workspaces.source.path)/prefetch/output`

## Action from users

Unless you are somehow touching cachi2 files in your Dockerfile, no action is required.
