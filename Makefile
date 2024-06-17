BUILDDIR=$(CURDIR)/build

PACKAGE=github.com/luu0731/mini-outline

# Don't strip Android debug symbols so we can upload them to crash reporting tools.
ANDROID_BUILD_CMD=gomobile bind -a -ldflags '-w' -target=android -tags android -work
APPLE_BUILD_CMD=gomobile bind -ldflags '-s -w' -target=ios,iossimulator,macos

android:
	mkdir -p "$(BUILDDIR)/android"
	$(ANDROID_BUILD_CMD) -o "$(BUILDDIR)/android/mini-outline.aar" $(PACKAGE)

apple:
	mkdir -p "$(BUILDDIR)/apple"
	$(APPLE_BUILD_CMD) -o "$(BUILDDIR)/apple/mini-outline.xcframework" $(PACKAGE)

clean:
	rm -rf "$(BUILDDIR)"
	go clean