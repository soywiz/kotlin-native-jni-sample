#!/usr/bin/env bash

docker run \
	"-v$PWD:/work" \
	"-v$HOME/.gradle-linux:/root/.gradle" \
	"-v$HOME/.m2:/root/.m2" \
	"-v$HOME/.konan:/root/.konan" \
	soywiz/kotlin-native-win \
	java -Djava.library.path=build/bin/linux/main/debug/shared HelloJNI
