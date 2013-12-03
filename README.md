###Replace

---

It's an intelligent replace tool for Vim, current version: 0.01, it's a very basic version, will support regex in later version.

#####How to use?
1. Add `source $PATH_TO_REPLACE/lib/Replace.vim` to `/etc/vimrc`.
2. In a text file, switch to command mode(colon mode).

######Replace
1. Basic replace, `Replace` + `string/character` + `pattern` + `firstline`(optional) + `lastline`(optional).
2. For example, replace all `e` with `xxx`, then type `Replace e xxx`.
3. If you want to replace `e` with `xxx` ranging from line 2 to line 23, then type `Replace e xxx 2 23`.

######Position
1. Return all positions of specified pattern.
2. In command mode, `Position` + `pattern`.
3. Display like this `pattern in:`
`line 3, pos 4`
`line 5, pos 6`.

######ReplaceFirst
1. Replace the first string or character of specified range of lines.
2. Given a string to be replaced, switch to command mode, `ReplaceFirst e xxx`.
3. Replace in a single line, just type `ReplaceFirst e xxx 23 23`

#####New features to be added
1. Escape characters in patterns and strings.
2. Support for Regular Expressions.
3. Replace optional characters or strings, for example: ONLY replace the first characters, or replace the third characters.
4. Put the installation process into shell script.
5. Maybe more intelligent.
