This repository has a bug somewhere in it. git bisect can help you find where the bug was introduced. You can see the commits with

    git log

Suppose you only know that the code is broken at master and that the code worked on the first commit. In that case, you could type:

    git bisect start
    git bisect good dcde9dfe3cea45d1c4c9aef8220f4e806b7cda01
    git bisect bad c274dbcd6d9cc8582f05a613ee5c00dde1806a8d

You can then run whatever tests you have to determine if the commit exhibits the bug or not, and if it does not, type:

    git bisect good

To indicate that the current commit is good, or:

    git bisect bad

If the current commit has the bug in it. Git will then advance you through the various commits using an efficient binary algorithm until it can tell you which commit is the first one to introduce the bug. It is even possible to do this automatically if you use:

    git bisect run rake

This is in the format "git bisect run _command_" where _command_ must return an exit code of 0 for success and non-zero for failure. When you're all done, you run:

    git bisect reset

to get back to where you were before the bisect began.
