#!/bin/bash

set -euo pipefail

export SERVER_FULLNAME="${1:-db.yearningwishmusic.fipapp.ansis.net}" # dev, alpha, testing, selenium
#export SERVER_FULLNAME="${1:-alpha.db.faims.edu.au}" # dev, alpha, testing, selenium
cp shelters.json faims3-temp-notebook-migrator/testnotebook.json
cp shelters.json faims3-temp-notebook-migrator/
cd faims3-temp-notebook-migrator
echo "Load Groundwater ${SERVER_FULLNAME}"
bash loadNotebook.sh $SERVER_FULLNAME "Shelter Notebook Demo $(date)" "shelters.json"