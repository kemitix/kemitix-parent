#!/usr/bin/env bash

if [ "$TRAVIS_BRANCH" = 'master' ] && [ "$TRAVIS_PULL_REQUEST" == 'false' ]; then
	openssl aes-256-cbc -K $encrypted_f424d6efdd6f_key -iv $encrypted_f424d6efdd6f_iv \
		-in travis-ci/codesigning.asc.enc -out travis-ci/codesigning.asc -d
	gpg --batch --fast-import travis-ci/codesigning.asc
	./mvnw --settings travis-ci/travis-settings.xml \
		-Dskip-Tests=true -P release -B deploy
fi

