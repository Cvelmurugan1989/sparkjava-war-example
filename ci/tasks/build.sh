#!/bin/bash

cd source-code-resource || echo "missing input resource: source-code"

echo "Using MAVEN_OPTS: ${MAVEN_OPTS}"

mvn compile ${MAVEN_ARGS}
