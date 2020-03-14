# Code Conventions

In the absense of knowledge or guidance about the _proper_ way to style code,
name variables, etc in Bash, I am settling on one particular way, in order to
provide myself with the benefits of a semantic style.

## File names

I am in the habit of using a hyphen (minus sign) to separate words in file
names. I think it makes them look less 'home-grown' (though, of course, they
are!) than they do when separated by underscores.

Neither do I use file extensions for the same reasons. Sure, the system doesn't
know externally what kind of file it is, but it doesn't need to (as far as I
know), because it just figures it out from the shebang.

## Method names

After some experimentation I couldn't really come up with any style or pattern
I really like. But I'm settling on methods intended to 'private' will be
prefixed with __. I think it important to mimic namespacing, to reduce
collisions, so I am opting for the use of a snake-case version of the file name
as a prefix to a snake-case method name, delimited by :: - e.g.:

```
__script_name::private_method
script_name::public_method
```

## Unavoidably public variables

In order to highlight the fact that in an object-oriented environment, most of
these sort of variables would be private, I add a leading __ to my variable
names where the intention is for them to be private. All variables will then
consist of a snake-case version of the file name, another underscore (for lack
of alternatives) and lastly a snake-case name - e.g.:

```
__script_name_private_variable
script_name_public_variable
```

## Local variables

Whenever possible, I try to use the _local_ keyword for variables within
functions. Since these variables are only in the scope of the function, I ditch
all the prefixes and delimiters and go for plan snake-case names - e.g.:

```
local_variable
```

## Comment blocks

Comment blocks should be as follows:

```
##
# Comment blocks
##
```
