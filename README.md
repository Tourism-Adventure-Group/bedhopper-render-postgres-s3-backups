# Deploy a Cron Job to Backup PostgreSQL to Amazon S3

This repo can be used to deploy a [Cron Job](https://render.com/docs/cronjobs) on [Render](https://render.com) to backup a PostgreSQL instance to Amazon S3.

Fork this repo and click the button below to deploy.

[![Deploy to Render](https://render.com/images/deploy-to-render-button.svg)](https://render.com/deploy)

See the guide at https://render.com/docs/backup-postgresql-to-s3 for more information.

The image uses PostgreSQL 14.24 on Debian Bookworm, with the AWS CLI installed
from Debian's packages. PostgreSQL 14 is the version used by `bedhopper-db-copy-2`.
The old `POSTGRES_VERSION` environment variable is no longer required; the client
version is pinned in `Dockerfile` instead.

After deploying a change, trigger a run of `backup-db` in Render. Confirm that the
run succeeds, the logs end with `Done.`, and a new backup appears in the S3 bucket.
