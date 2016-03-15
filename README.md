# alpine-gradle

Docker image for Gradle based on Alpine Linux

## Sample run command

```
docker run --rm -it -v $(pwd):/app -v $(pwd)/.gradle:/gradle chickenzord/alpine-gradle clean build
```

## Mount Points

* `/app`: Working directory, where your build.gradle located
* `/gradle`: Gradle home directory, where the gradle cache located
