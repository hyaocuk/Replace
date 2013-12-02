###Replace

---

It's an intelligent replace tool for Vim, current version: 0.01, it's a very basic version, will support regex in later version.

#####How to use?
1. Add `source $PATH_TO_REPLACE/lib/Replace.vim` to `/etc/vimrc`.
2. In a text file, switch to command mode(colon mode).
3. Format: `Replace` + `string/character` + `pattern` + `firstline`(optional) + `lastline`(optional).
4. For example, replace all `e` with `xxx`, then type `Replace e xxx`.
5. If you want to replace `e` with `xxx` ranging from line 2 to line 23, then type `Replace e xxx 2 23`.

######Position
1. Return all positions of specified pattern.
2. In command mode, `Position` + `pattern`.
3. Display like this `pattern in line 3, pos 4`.

#####New features to be added
1. Escape characters in patterns and strings.
2. Support for Regular Expressions.
3. Replace optional characters or strings, for example: ONLY replace the first characters, or replace the third characters.
4. Put the installation process into shell script.
5. Maybe more intelligent.
