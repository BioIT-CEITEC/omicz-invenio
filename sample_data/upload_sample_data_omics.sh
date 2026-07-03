#!/usr/bin/env bash

set -euo pipefail

# This script uploads sample data files to the Invenio instance.

cd $(dirname "$0")

# run: uvx nrp-cmd add repository  --no-verify-tls  https://127.0.0.1:5000/ omicz-invenio-local
# run: uvx nrp-cmd remove repository omicz-invenio-local
# ./run.sh upgrade && echo "yes" | ./run.sh reset && ./run.sh run
# http://127.0.0.1:9001/login - aa-omicz-invenio-aa - default
REPOSITORY=omicz-invenio-local

LOG_FLAGS="--log-url --log-request --log-response -v"

# create a draft record
uvx nrp-cmd create record --repository $REPOSITORY --model omics ./omics_001.json --set omics_001_draft $LOG_FLAGS

# upload a file to the draft record
file_metadata=$(cat <<EOF
{
    "description": "Toy FASTQ placeholder for the WGS demo record",
    "read_count": 2
}
EOF
)
uvx nrp-cmd upload file @omics_001_draft --repository $REPOSITORY --key 01 ./omics_001.fastq "$file_metadata" $LOG_FLAGS

# publish the record
uvx nrp-cmd publish record @omics_001_draft --repository $REPOSITORY $LOG_FLAGS
