---
layout: post
title: Line by Line profiling of C++ code
tags: [ c++ ]
comments : true
---

Recently I encountered a performance issue in C++ code. I wrote around 200 lines of C++ code which was working perfectly fine with small input but damm slow with large input. I decided to profile the C++ code using gprofile. As a newbie to profiling market I searched a lot but was not able to find step by step instructions on how to profile C++ code line be line. And so I decided to document the steps I followed in this blog post.

There are many profilers available in market but after reading a lot about them I decide to go with gprof. To keep the post short and to the point I won't describe logic behind each step.

Step 1. For check whether gprof is installed on your system.To do this, just run below command in terminal 
            `grpof`
        
        If you get an error then follow below step to install it. Else, move to next step 
    
        For debian install using command 
            `apt-get install binutils`

        For Mac Os using command (assuming you have homebrew installed)
            `brew install binutils`

Step 2. Compile your C++ code with `-pg -g` flag. Something like:
            `g++ -pg -g -o final final.cpp`

        

    
