#!/usr/bin/env bash

# USAGE: createrole.sh rolename

ROLE=$1

echo "Creating role $ROLE folder structure..."

mkdir $ROLE

mkdir $ROLE/files/
mkdir $ROLE/handlers/
mkdir $ROLE/meta/
mkdir $ROLE/tasks/
mkdir $ROLE/templates/
mkdir $ROLE/vars/


echo "Creating boilerplate files..."

cat > $ROLE/files/sample.txt <<'EOF'
Files can be anything you want to use in your role.

EOF

cat > $ROLE/handlers/main.yml <<'EOF'
---

EOF

cat > $ROLE/meta/main.yml <<'EOF'
---
dependencies: []

EOF

cat > $ROLE/tasks/main.yml <<'EOF'
---

EOF

cat > $ROLE/templates/template.j2 <<'EOF'
# Ansible used the jinja2 templating engine
# http://jinja.pocoo.org/

EOF

cat > $ROLE/vars/main.yml <<'EOF'
---

EOF

echo "$ROLE role created!!!"
