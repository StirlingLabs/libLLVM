![libLLVM](https://github.com/StirlingLabs/libLLVM/blob/main/libLLVM.jpg)

[![Build](https://github.com/StirlingLabs/libLLVM/actions/workflows/build.yaml/badge.svg)](https://github.com/StirlingLabs/libLLVM/actions/workflows/build.yaml)

The purpose of this repo is to use GitHub Actions to build [libLLVM](https://llvm.org) and make the following binaries available:

- Windows x86-64 (static libstdc++, UPX minified)
- Linux x86-64 (LTO thin, UPX minified)
- MacOS ARM64 & x86-64 (LTO Thin, Universal Binary)

This is done specifically for our fork of [StirlingLabs/LLVMSharp](https://github.com/StirlingLabs/LLVMSharp) but the NuPkg is also available at https://www.nuget.org/packages/StirlingLabs.libLLVM.

## Building

To trigger a new build, create a new release with a tag in the format "v14.0.7.0" where the first 3 positions correspond to the release [LLVM](https://llvm.org).
