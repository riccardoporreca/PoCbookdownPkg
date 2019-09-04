# PoC-bookdownPkg - branch

<!-- badges: start -->
[![Travis build status](https://travis-ci.org/miraisolutions/PoCbookdownPkg.svg?branch=master)](https://travis-ci.org/miraisolutions/PoCbookdownPkg)
<!-- badges: end -->

PoC of a package with a GitHub Pages website and TravisCI integration, including
functionality to render individual reports and a website.

## Usage
### Render a prametrized report

```r
browseURL(render_report("ith-report", params = list(i = "iteration XYZ")))
```

### Render the website

```r
browseURL(render_site())
```


## Notes about naming and design

* The naming `site` and `_site` is alligned with `rmarkdown::render_site()`
* `site.R` and `report.R` contain all relevant site- and report-related utilities.
