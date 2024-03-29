# Help
This file helps you with the basic configuration and solving possible problems that could arise during the first steps.

## Accessing Postgres
If the setup cannot go any further due to authentication problems with Postgres, ensure that the users can access Postgres via the command line using the password.
To achieve that edit the file `pg_hba.conf`, the path may vary according to the system and the distribution you are using:
* Unbutu: `/etc/postgresql/9.4/main/`
* Fedora: `/var/lib/pgsql/data/`

Here change this line

```
local   all             all                                     peer
```

into

```
local   all             all                                     md5
```

When done restart postgres
```
$ sudo service postgresql restart
```
