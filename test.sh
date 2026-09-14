#!/usr/bin/env bash

set -euo pipefail

migration_script="task/slack-webhook-notification/0.1/migrations/0.1.1.sh"
tests_dir="tests"

while IFS= read -r -d '' pipeline_file; do
    bash "$migration_script" "$pipeline_file"
done < <(find "$tests_dir" -type f \( -name '*.yaml' -o -name '*.yml' \) -print0)
