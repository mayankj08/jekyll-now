---
layout: post
title: Check CPU Support for a feature
tags: [ Compiler ]
comments : true
---

Many times we need to check cpu support for a particular feature, for example: We may need to check in our code if the CPU my code is running on supports AVX or not. To check this we can use compiler Intrinstics. One such intrinsic for gcc/clang (I am not sure if other compilers support this) is `__builtin_cpu_supports`. This instrinsic returns true if the hardware supports the feature given as input the the function call. Assume I want to check if my hardware supports AVX or not, I can check it as below:

```
#include<stdio.h>

int main(){
    if(__builtin_cpu_supports("avx"))
        printf("AVX supported\n");
    else
        printf("AVX not supported\n");
return 0;
}
```

By the way, you can check check list of all the flags supported by your cpu in the file cpuinfo under proc file system too.

```
mayank:~> cat /proc/cpuinfo|grep -i flags
flags		: fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush dts mmx fxsr sse sse2 ss ht syscall nx rdtscp lm constant_tsc arch_perfmon pebs bts nopl xtopology tsc_reliable nonstop_tsc cpuid pni pclmulqdq ssse3 cx16 pcid sse4_1 sse4_2 x2apic popcnt aes xsave avx f16c rdrand hypervisor lahf_lm cpuid_fault pti fsgsbase smep arat
```


