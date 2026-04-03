# DPSF Website

This is code for the [DPSF XNA project](https://github.com/deadlydog/DPSF-XNA) website, which can be viewed at [XnaParticles.com](https://xnaparticles.com).

## Building and deploying the website

The website is built using a custom [BuildWebsite.ps1](/build/BuildWebsite.ps1) PowerShell script.
The script will replace any `<custom_inject_during_build>` tags in the HTML files with the contents of the specified file, which is typically a `*.part.html` file.
The script then copies the transformed website files to the `_WebsiteBuildOutput` folder.

The website is deployed to GitHub Pages using the [build-and-deploy-website.yaml](/.github/workflows/build-and-deploy-website.yaml) GitHub Actions workflow.
It automatically runs whenever changes are pushed to the `main` branch.
