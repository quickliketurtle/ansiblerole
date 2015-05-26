#!/bin/bash

# USAGE: createrole.sh rolename

ROLE=$1

# Blank main.yml file
IFS= read -r -d '' CONTENT <<'EOF'
---

EOF

echo "Creating Role $ROLE"

mkdir $ROLE

mkdir $ROLE/files/
mkdir $ROLE/handlers/
mkdir $ROLE/meta/
mkdir $ROLE/tasks/
mkdir $ROLE/templates/
mkdir $ROLE/vars/

# Create meta main.yml file
cat > $ROLE/meta/main.yml <<'EOF'
---
dependencies: []

EOF

# Create blank main.yml files
echo $CONTENT > $ROLE/handlers/main.yml
echo $CONTENT > $ROLE/tasks/main.yml
echo $CONTENT > $ROLE/vars/main.yml
