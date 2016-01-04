<!-- README.md is generated from README.Rmd. Please edit that file -->
[![Project Status: Wip - Initial development is in progress, but there has not yet been a stable, usable release suitable for the public.](http://www.repostatus.org/badges/0.1.0/wip.svg)](http://www.repostatus.org/#wip) [![](http://www.r-pkg.org/badges/version/githug)](http://www.r-pkg.org/pkg/githug)

<!-- [![Build Status](https://travis-ci.org/jennybc/githug?branch=master)](https://travis-ci.org/jennybc/githug) -->
githug
------

### Welcome to Version Control!

<!--[Demo](https://analovesdotcom.files.wordpress.com/2015/10/voldyhug-1440161473.gif)-->
![Demo](img/voldyhug-1440161473.gif)

Wrap yourself in the warm embrace of Git from the comfort of R.

### githug

This package facilitates common Git tasks by gluing together features from [git2r](https://github.com/ropensci/git2r) and [gh](https://github.com/gaborcsardi/gh), with special attention to things you can't do with RStudio's Git client.

I teach "data analysis with R". Alot, often under time constraints, with students running Mac OS, Windows, and Linux. But they all have perfectly functional R/RStudio setups! I like to touch on Git and GitHub, but hate to get bogged down in Git-related [command-line bullshittery](http://www.pgbovine.net/command-line-bullshittery.htm). `githug` lets us stay in R/RStudio for as long as possible, while still using Git and GitHub.

### Installation

``` r
devtools::install_github("jennybc/githug")
```

### Usage

*write this*

### How does `githug` fit into existing landscape?

-   RStudio's Git client has a few gaps that hurt
    -   cannot create a branch
    -   cannot set up anything remote
    -   can only set up connection to a remote under narrow circumstances (when cloning from GitHub -- which is why we advocate a "GitHub first" workflow in STAT 545); leads to wistful staring at greyed out Pull and Push buttons otherwise
-   [`gh`](https://github.com/gaborcsardi/gh) package from Gabor Csardi is a very thin wrapper around the GitHub API
    -   user must read API docs to figure out what's possible and then deduce syntax for a `gh` call
    -   no native vectorization
-   *[`rgithub`](https://github.com/cscheid/rgithub/) is another GitHub API wrapper, but seems less suitable as a low-level thing to wrap than `gh`*
-   [`git2r`](https://github.com/ropensci/git2r/) from Stefan Widgren / rOpenSci wraps libgit2, so in theory exposes almost anything you can do from Git via command line
    -   default arguments and argument order can be improved, e.g. automatic determination of repo
    -   heavy use of S4 objects
-   [`hub`](https://hub.github.com) command line wrapper for GitHub. Note that the [`gh`](https://github.com/jingweno/gh) command line client has been merged into `hub`.
-   [`gitlabr`](http://gitlab.points-of-interest.cc/points-of-interest/gitlabr/issues/): new, nice wrapper around the gitlab API from Jirka Lewandowski. Dual = high level and low level.
    -   <http://blog.points-of-interest.cc/post/gitlabr-released>
    -   <https://cran.r-project.org/web/packages/gitlabr/>

#### Stuff I want to provide

-   ~~Global config~~
    -   ~~user.name~~
    -   ~~user.email~~
-   Repos
    -   ~~init~~
    -   ~~discover~~
    -   ~~status, log, etc etc~~
    -   branch
-   Authentication stuff: set up, query, modify
    -   turn on keychain for HTTPS people
    -   help set up SSH keys and configure ssh-agent?
    -   get and stow PAT for GitHub API
-   Remotes
    -   list
    -   add
    -   delete
    -   rename
-   Interact with GitHub repos
    -   visit in a browser: `hub browse`
    -   create: `hub create karthik/foo` will create a new repo on my github account called foo, add it as remote and push the current branch
    -   clone, fork
    -   delete
    -   create, delete, track branch
    -   push and pull
    -   update a fork
-   GitHub API
    -   help user figure out what's possible? make this table Gabor and I talk about over in `gh` and put to good use here?
    -   expose fxns to do at least all the stuff I've done via the API
    -   use `dplyr`/`tidyr`/`purrr` to `tbl_df`-ize and tidy output and vectorize on input?
-   Is Git installed? What version? Where does Git appear to be? Is it on the `PATH`?
