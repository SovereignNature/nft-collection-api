#!/bin/bash

VERSION=1.0.0
docker run -p 3000:3000 -v $(pwd)/unrevealed:/nft-collection-api/unrevealed -v $(pwd)/metadata:/nft-collection-api/metadata -v $(pwd)/images:/nft-collection-api/images -d --name api nft-collection-api:$VERSION
