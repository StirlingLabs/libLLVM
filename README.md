![libLLVM](https://github.com/StirlingLabs/libLLVM/blob/main/libLLVM.jpg)

The purpose of this repo is to use GitHub Actions to build [libLLVM](https://llvm.org) and make the following binaries available:

- Windows x86-64
- Linux x86-64
- MacOS ARM64 & x86-64 (Universal Binary)

Specifically for our fork of [StirlingLabs/LLVMSharp](https://github.com/StirlingLabs/LLVMSharp) but we also create a NuPkg with the MacOS binaries split so dotnet can reference them.

To trigger a new build, create a new release with a tag in the format "v14.0.1"