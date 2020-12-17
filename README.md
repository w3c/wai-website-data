The files in this repository are companion files for the `wai-website-theme`. They are included in all repositories that use the theme by being included as the git submodule at `/_external/data` and linked to from the folder `/_data`. 

A `Gemfile` and `Gemfile.lock` are also provided to define dependencies consistently across all repositories. 

## How to do it

From the base directory of your repository, execute the following commands.

If you already have a `_data` directory, Gemfile or Gemfile.lock, delete them. Then, in the project workspace root:
```
git submodule add https://github.com/w3c/wai-website-data.git _external/data
ln -s _external/data/Gemfile
ln -s _external/data/Gemfile.lock
mkdir _data
cd _data
ln -s ../_external/data/lang.json
ln -s ../_external/data/navigation.yml
ln -s ../_external/data/techniques.yml
ln -s ../_external/data/translations.yml
ln -s ../_external/data/wcag.yml
```