# REQUIRES: x86
# RUN: llvm-mc -filetype=obj -triple=x86_64-unknown-linux %s -o %t.foo.o
# RUN: llvm-mc -filetype=obj -triple=x86_64-unknown-linux %s -o %t1.bar.o

## Check -t
# RUN: ld.lld -shared %t.foo.o -o %t.so -t 2>&1 | FileCheck %s
# CHECK: {{.*}}.foo.o

## Check --trace alias
# RUN: ld.lld -shared %t.foo.o -o %t.so -t 2>&1 | FileCheck %s
