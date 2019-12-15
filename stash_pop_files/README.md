# What is this ?
- help you stash all files by its name(path), and pop all commit related files by its name(path).

it is very useful when create a new 'library' or 'project' but it is not released yet,
you have divided these files into different commits, but after
all files locate in a commit, you still need lots of moidification for these files.

e.g.
- latest comit
- commit 2: file C, D, E
- commit 1: file A, B

After some modification, you need A,B's modification into commit 1,
C,D,E's modification into commit2.
How to do this ?

# How to use it ?
- step0. Modify files.

- step1. cd to the project root (very important for corret file name)

- step2. ./stash_files.sh (which will stash all files by its name)

- step3. rebase to the commit. (i.e git rebase -i ...)

- step4. ./pop_files.sh (which will pop files related current commit)

- step5. git add -u; git commit --amend; git rebase --continue;
// step5 -> step4 -> ... util all stash files are poped

