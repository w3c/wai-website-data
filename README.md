The files in this repository are companion files for the `wai-website-theme`. They are included in all repositories that use the theme by being included as the git submodule at `/_external/data` and linked to from the folder `/_data`. 

The `wai-gems` gem is used to share the gem dependencies between all repos. See the [README](wai-gems/README.md)

## How to do it

From the base directory of your repository, execute the following commands.

If you already have a `_data` directory, Gemfile or Gemfile.lock, delete them. Then, in the project workspace root:
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

## How to update JSON files under the `wcag/` directory

Run the following command in the top level of the project directory:

```
node _update-wcag-json.mjs
```

This requires [Node.js](https://nodejs.org/) version 20 or later.
