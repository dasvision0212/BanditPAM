#!/usr/bin/env bash

echo "Running pre-commit hook"
./scripts/pre-commit-run-tests.sh

if [ $? -ne 0 ]; then
 echo "Tests must pass before commit!"
 exit 1
fi
