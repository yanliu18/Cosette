Development Instructions
========================

## Set up development environment
Following this link to install The Haskell Tool Stack :https://docs.haskellstack.org/en/stable/README/

1. cd dsl
2. stack setup
3. stack build
4. stack exec my-project-exe

## Test parser

`runghc QueryParseTest.lhs`

## Test output to rosette

`runghc ToRosetteTest.lhs`

## Test output to Coq

`cat examples/pullsubquery.cos | runghc CosetteSolver.lhs`
