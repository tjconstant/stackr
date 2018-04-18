<!-- README.md is generated from README.Rmd. Please edit that file -->
stackr
======

[![Travis-CI Build Status](https://travis-ci.org/tjconstant/stackr.svg?branch=master)](https://travis-ci.org/tjconstant/stackr) [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/tjconstant/stackr?branch=master&svg=true)](https://ci.appveyor.com/project/tjconstant/stackr)

stackr passes any caught errors to a stackoverflow query and loads the website to the appropriate page.

Example
-------

### Encapsulation of code

``` r
stackr({
  1+1
  print(a)
})
```

    #> Error: object 'a' not found

And opens <https://stackoverflow.com/search?q=object+%27a%27%20not%20found+%5Br%5D+hasaccepted%3Ayes+score%3A3>

### Interactive

Future usage will also be able to run interactivly, loading the correct stackoverflow page for the previous error message by just typing `stackr()`
