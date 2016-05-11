* Swift is slow, pathetically slow as an interpreter. Almost in all cases, it is slower than python & typescript. However, in most cases it is faster when compiled.
* Reversing a string is complicated in typescript & swift. It is simple and easy to understand in python (ref 004)
* <del>Double for loop takes forever in Swift. Solving 004 takes .33 secs in python, .85 secs in typescript, and it takes 42 secs (yes 42) seconds in Swift</del>. It is not the double loop that is slow. Swift's handling strings is. Strings are expensive in swift. Avoid them if you can
* Swift syntax keep changing between versions. Ex: .reverse() became .reversed() in version 3. It is difficult to keep pace with a ever changing language.
* Algorithms matter (ref: Euler 005)