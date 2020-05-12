TIME WARP - A MacOS Time Machine Tinkerer
=========================================

Ever wish Time Machine for MacOS didn't back-up all of your composer or npm dependencies?

## Intro

Time Warp monitors your filesystem for dependency directories and excluding them from Time Machine backups.

## What

At its heart Time Warp is a cli that can be used to set up a watch on chosen filesystem paths for changes to defined target files or directories, excluding from Time Machine backups those that are identified.

Targets are defined by configurable (and extendable) profiles, and the profiles are then used both to filter paths for the watch process and to positively identify new matching paths as targets for exclusion.

## File Profiles

File profiles – located by default in `~/.config/time-warp/profiles` – are used to dynamically identify filesystem paths as a target to be excluded from backups.

A file profile is made up of `filters` and `predicates`.

### Filters

Time Warp uses [watchexec](https://github.com/watchexec/watchexec) under the hood for filesystem monitoring and profile filters are essentially a proxy for setting certain watchexec filter options. Allowed options are:

  - `-e, --exts=[extensions]`
    - Comma-separated  list  of  file extensions to filter by. Leading
      dots (.rs) are allowed. (This  is  a  shorthand  for -f).
  - `-f, --filter=[pattern]`
    - Ignores modifications from paths that do not match pattern. This
      option can be specified multiple times, where  a  match  on  any
      given pattern causes the path to trigger command.
  - `-i, --ignore=[pattern]`
    - Ignores modifications from paths that match pattern. This option
      can  be  specified  multiple  times,  and a match on any pattern
      causes the path to be ignored.

Both the short- and long-form options are allowed and **the equal sign joinng an option handle to its value is required**.


**Valid**:
```
--filter=**/pattern/**
```

**Invalid**:
```
--filter **/pattern/**
```

### Predicates

Predicates are used to test that a candidate matched by the watcher – as defined by the profile filters – definitively matches this profile. Predicates are tested sequentially, in the order in which they are defined, and they must all evaluate as `true` in order to identify a candidate path as a confirmed target.

Predicate values are essentially relative path values, tested for existence or non-existence. Allowed predicate tests are currently any combination of:

  - `-d, --directory=[path/2/dir/that/should/exist]`
  - `-f, --file=[path/2/file/that/should/exist]`

A predicate can also be negated with an exclamation mark, as follows:

  - `--file!=[file/that/should/not/exist]`
