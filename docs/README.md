# W3C WAI website shared data

This repository contains data files used for the [W3C WAI website](https://www.w3.org/WAI)

The data files are used by the [`wai-website-theme`](https://github.com/w3c/wai-website-theme) and by the submodule repositories to build the [`wai-website`](https://github.com/w3c/wai-website). The `wai-gems` gem is used to share the gem dependencies between the repositories.

Table of contents:
- [Structure](#structure)
- [Initial setup in a WAI website repository](#initial-setup-in-a-wai-website-repository)
- [Updating the `wai-website-data` submodule](#updating-the-wai-website-data-submodule)

## Structure

A [description of files and directories](structure.md) is available.

## Initial setup in a WAI website repository

From the project root directory, execute the following commands.

### Add `wai-website-data` repository as a submodule

```bash
git submodule add https://github.com/w3c/wai-website-data.git _external/data
```

The submodule files will be located into `_external/data/`.

A new `.gitmodules` file will be also created in the project root directory, or a new entry added to the existing file:

```
[submodule "_external/data"]
    path = _external/data
    url = https://github.com/w3c/wai-website-data.git
```

### Create a `_data` folder from the root of your project

```bash
mkdir _data
```

### Create symlinks to the files you will use

To access the files via Jekyll, the data files needs to be accessible from the `_data` directory.

Symlinks are used to point to the relevant files or folders in the `_external/data` folder.

For example, run the following command to use WAI website navigation, language list, UI translations, video metadata, and video captions and subtitles:

```bash
ln -s ../_external/data/navigation.yml
ln -s ../_external/data/lang.json
ln -s ../_external/data/translations.yml
ln -s ../_external/data/video-metadata.yml
ln -s ../_external/data/wai-videos
```

## Updating the `wai-website-data` submodule

To fetch and checkout the latest version of the files in a WAI website repository, run the following command:

```bash
git submodule update --init --remote _external/data
```

## Contributing and reporting issues

Please refer to [CONTRIBUTING](CONTRIBUTING).