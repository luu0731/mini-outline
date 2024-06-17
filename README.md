# mini-outline

The library that supports [outline-sdk](https://github.com/Jigsaw-Code/outline-sdk).

## How To Use ?

We use [gomobile](https://github.com/golang/go/wiki/Mobile) to export libraries for every platform.

### Install gomobile

```shell
go install golang.org/x/mobile/cmd/gomobile@latest
gomobile init
```

The `gomobile` will be installed in `$GOPATH/bin`, the default `$GOPATH` is `$HOME/go`. If you got an error that
shows `gomobile not found`, please add the bin path to `$PATH`.

The `gomobile` doesn't support the latest version of NDK. We use NDK r22 for this library. Add `ANDROID_NDK_HOME`
environment variable to specific the version.

```
export ANDROID_NDK_HOME=$ANDROID_HOME/ndk/22.1.7171670
```

### iOS & macOS

Run the commands below to produce the library that support `iOS` and `macOS`.

```shell
mkdir build
gomobile bind -target=ios,iossimulator,macos -o build/apple/mini-outline.xcframework github.com/luu0731/mini-outline
```

or

```shell
make clean && make apple
```

[iOS Demo](https://github.com/luu0731/mini-outline-ios)

[macOs Demo](https://github.com/luu0731/mini-outline-macos)

### Android

Run the commands below to produce the library that support `Android`.

```shell
mkdir build
gomobile bind -target=android -o build/android/mini-outline.aar github.com/luu0731/mini-outline
```

or

```shell
make clean && make android
```

[Android Demo](https://github.com/luu0731/mini-outline-android)