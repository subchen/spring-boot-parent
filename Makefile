default: verify

clean:
	mvn clean

format:
	mvn process-sources -P format

test:
	mvn test -Dmaven.test.skip=false

compile:
	mvn compile

build:
	mvn package

verify:
	mvn verify -P oss

install:
	mvn install

deploy:
	mvn clean deploy -P oss -DautoReleaseAfterClose=true

version-set:
	mvn versions:set -DgenerateBackupPoms=false -DnewVersion=$(version)

