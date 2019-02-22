# GitHub Actions for NPM, Chrome/Puppeteer

This action it for those running npm with support for react-snap.


#### Example


```hcl
action "NPM Build" {
  uses = "daleobrien/npm-with-chrome-browser-action@master"
  args = "build"
}
```

#### Sample Project

To test the Docker file, build the included sample project.

```bash
composer-docker up
```
