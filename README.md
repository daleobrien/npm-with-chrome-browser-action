# GitHub Actions for NPM with Chrome

This action it for those running npm with support for react-snap which requires chrome browser to pre render pages.

#### Example


```hcl
action "NPM Build" {
  uses = "daleobrien/npm-with-chrome-browser-action@master"
  args = "build"
}
```