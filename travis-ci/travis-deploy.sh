#!/usr/bin/env bash

echo "Preparing to deploy to nexus..."
openssl aes-256-cbc -K $encrypted_f424d6efdd6f_key -iv $encrypted_f424d6efdd6f_iv \
    -in travis-ci/codesigning.asc.enc -out travis-ci/codesigning.asc -d
echo "Signing key decrypted"
gpg --batch --fast-import travis-ci/codesigning.asc
echo "Signing key imported"
./mvnw --settings travis-ci/travis-settings.xml \
    -Dskip-Tests=true -P release -B deploy
echo "Deploy complete"

