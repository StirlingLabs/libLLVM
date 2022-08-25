@ECHO OFF
ECHO You must have LLVM and UPX installed
ECHO.
cd ..\llvm-project\llvm
mkdir build
cd build
cmake .. -DCMAKE_INSTALL_PREFIX=_install -DCMAKE_BUILD_TYPE=Release -DLLVM_INSTALL_TOOLCHAIN_ONLY=ON -DLLVM_INCLUDE_TESTS=OFF -DLLVM_INCLUDE_BENCHMARKS=OFF -DLLVM_INCLUDE_DOCS=OFF -DLLVM_INCLUDE_EXAMPLES=OFF -DLLVM_INCLUDE_UTILS=OFF -TClangCL -A x64 -DLLVM_BUILD_LLVM_C_DYLIB=ON -DLLVM_USE_CRT_RELEASE=MT -DLLVM_STATIC_LINK_CXX_STDLIB=ON -DCMAKE_C_COMPILER=C:/Progra~1/LLVM/bin/clang-cl.exe -DCMAKE_CXX_COMPILER=C:/Progra~1/LLVM/bin/clang-cl.exe -DCMAKE_LINKER=C:/Progra~1/LLVM/bin/lld-link.exe -DCMAKE_RANLIB=C:/Progra~1/LLVM/bin/llvm-ranlib.exe -DCMAKE_AR=C:/Progra~1/LLVM/bin/llvm-ar.exe -DLLVM_ENABLE_LIBXML2=OFF -DLLVM_ENABLE_ZLIB=OFF
msbuild /m -p:Configuration=Release INSTALL.vcxproj
cd _install\bin
C:\Progra~1\UPX\upx.exe --best LLVM-C.dll -o LLVM-14.dll