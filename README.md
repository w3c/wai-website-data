# WAI website data

> [!IMPORTANT]
> This repository has been archived 30 January 2026.
>
> The WAI website does not use this repository anymore.
>
> For more information, see https://github.com/w3c/wai-website/pull/1745, w3c/wai-website-theme#171, w3c/wai-website-theme#173 and w3c/wai-website-plugin#4

This repository contained data shared across multiple W3C WAI repositories. 

## How to use the files

### Incorporate `wai-website-data` to your repository

From the root directory of your git repository, run:

```bash
git submodule add https://github.com/w3c/wai-website-data.git _external/data
```

When it finishes, the content of the `wai-website-data` repository will be in the `external/data` directory.

A `.gitsubmodules` file will also be created with the following information.

```
[submodule "_external/data"]
path = _external/data
url = https://github.com/w3c/wai-website-data.git
```

If the file already exists, it will be updated accordingly.

### Symlink the files you need

To use the files, create symlinks where you need them:
1. Navigate to the folder where you want the file to appear
2. Create a symlink pointing to the corresponding file in the `external_data` folder, using the `ln -s` command.

For example:

```
cd _data
ln -s ../_external/data/navigation.yml
```

This makes the shared `navigation.yml` available in the `_data` folder.

## How to update wcag22.json

To update `wcag22.json`, run the following within the project directory:

```
node _update-wcag-json.mjs
```

This requires [Node.js](https://nodejs.org/) version 20 or later.
