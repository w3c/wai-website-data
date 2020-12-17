The files in this repository are companion files for the `wai-website-theme`. They are included in all repositories that use the theme by being included as the git submodule at `/_external/data` and linked to from the folder `/_data`.

## How to do it

From the base directory of your repository, execute the following commands.

If you already have a `_data` directory, delete it. Then, in the project workspace root:
```
git submodule add https://github.com/w3c/wai-website-data.git _external/data
mkdir _data
cd _data
ln -s ../_external/data/lang.json
ln -s ../_external/data/navigation.yml
ln -s ../_external/data/techniques.yml
ln -s ../_external/data/translations.yml
ln -s ../_external/data/wcag.yml
```