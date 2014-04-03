.<div class="slide" style="">

# Third Step - Deploying

From your machine:

```bash
make all
scp bin/* qa.mycompany.net:/opt/bin/
scp dependencies/* qa.mycompany.net:/opt/bin/
scp beta.properties qa.mycompany.net:/opt/bin/
scp apache.conf qa.mycompany.net:....
mysql < database-changes.sql

```
.</div><div class="slide" style="">

# Third Step - Deploying

From clean machine:

```
make all
./deploy.sh qa
```
.</div><div class="slide" style="">

# Third Step - Deploying

## Two Approaches

* Deployments are hard - do less frequently and more carefully

* Deployments are hard - do more frequently, automated

.</div><div class="slide" style="">

# Third Step - Deploying

## Required components

* Automate start, stop (```supervisord```, ```init.d```)

* Configuration changes

* Database changes (even NoSQL)

* Deploying front end

* Dealing with live users

* Rollback strategy

.</div><div class="slide" style="">

# Source Control

* Everything goes through source control

* Exception: System state that gets backed up

* Other Exception: System dependencies

.</div>