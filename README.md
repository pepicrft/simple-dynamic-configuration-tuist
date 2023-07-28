# Tuist project dynamically configured

This repository contains a simple Tuist project that generates an Xcode project with frameworks.
By default, Tuist generates a framework called `Default` containing the sources under `Sources`.
However, that can be controlled via the environment variable `TUIST_FRAMEWORK_NAMES`:

```
TUIST_FRAMEWORK_NAMES=Foo,Bar tuist generate
```

You can read more about accessing the environment variables from the manifest [here](https://docs.tuist.io/guides/environment).
This feature is particularly useful in the context of white-label apps.