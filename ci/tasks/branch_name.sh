#!/bin/bash

cd source-code-resource || echo "missing input resource: source-code"
git branch | grep \* | cut -d ' ' -f2
