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

## FAQ

### The default branch name has changed. How to update my fork?

Since December 2024, the default branch is named `main`, for consistency with other W3C repositories and [GitHub default branch name](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/about-branches#about-the-default-branch).

If you have an existing fork, you can [rename your fork's default branch](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-branches-in-your-repository/renaming-a-branch#renaming-a-branch).

If you have a local clone, you can either delete and re-clone the repository, or update it by [running the commands from GitHub documentation](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-branches-in-your-repository/renaming-a-branch#updating-a-local-clone-after-a-branch-name-changes).

You may encounter an error when trying to update the `_external/data` submodule in local clones of other repositories. Indeed, when the default branch is changed, [the submodule does not automatically switch to the new default branch](https://www.sjoerdlangkemper.nl/2021/10/15/git-submodule-update-remote-retrieves-default-branch-except-when-changed/). To retrieve and update the local remote HEAD, run `git submodule foreach git remote set-head origin -a` from the root folder.