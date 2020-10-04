
# Reader-GraphQL-APIS

This project is a reader of these apis : 
1- https://github.com/MarcosiOSdev/GraphQL-iOS-Vapor
2- https://github.com/MarcosiOSdev/GraphQL-iOS-NodeJS

## Setup 

* Run one of these apis above.

### Setup for iOS Reader

1- Install Apollo 
`npm install -g apollo.`

2- Get schema.json: 
`apollo schema:download --endpoint=http://127.0.0.1:4000/graphql schema.json`

3- Create Script in Build Phases:

```SCRIPT_PATH="${PODS_ROOT}/Apollo/scripts"
cd "${SRCROOT}/${TARGET_NAME}"
"${SCRIPT_PATH}"/run-bundled-codegen.sh codegen:generate --target=swift --includes=./**/*.graphql --localSchemaFile="schema.json" API.swift
```






