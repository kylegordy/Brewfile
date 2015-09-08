# My Brewfile

This Brewfile helps me get a new Mac up and running super quick.

### Requirements

[Homebrew](http://github.com/Homebrew/homebrew) is used for installing the dependencies, it only works on OS X and so does Brewfile.

[Homebrew Cask](http://github.com/caskroom/homebrew-cask) is used for installing Mac applications.

[Brew Bundle](https://github.com/Homebrew/homebrew-bundle) is needed to run the Brewfile.

### Install Brew Bundle

    $ brew tap Homebrew/bundle

### Run Brewfile

To install all of the binaries/apps in the Brewfile run:

    $ brew bundle

If a dependency is already installed and there is an update available it will be upgraded.

Learn more about creating Brewfiles [here](https://github.com/Homebrew/homebrew-bundle).
