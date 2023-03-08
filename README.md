# Alfred search MY Github repos

Create Alfred workflow to quickly search and navigate my Github repos.

This repo includes a script to fetch my Github repos  and dump it to a JSON file which conforms to [Alfred Script Filter JSON format](https://www.alfredapp.com/help/workflows/inputs/script-filter/json/) so that it can be used in a Alfred workflow to quickly search the repos.

Heavily inspired by https://mmazzarolo.com/blog/2020-09-28-alfred-github-repos/

# Demo
![](https://raw.githubusercontent.com/ifyouseewendy/image-repo/master/PicGo/202303072145666.png)

# Usage

## Run script

Run script to fetch repos and dump to `github-repos.json`

```
ACCESS_TOKEN=YOUR_ACCESS_TOKEN ruby run.rb
```

## Configure Alfred workflow

Create a workflow with "Getting Started -> Script Filter" and customize the template with

![](https://raw.githubusercontent.com/ifyouseewendy/image-repo/master/PicGo/202303072139357.png)

Connect the output to "Open URL" action and customize it with

![](https://raw.githubusercontent.com/ifyouseewendy/image-repo/master/PicGo/202303072140323.png)
