# Temporary installation
You can try this app by downloading onto the current directory.
And you can uninstall by removing the downloaded directory.

1. Download and Install command
```
curl https://raw.githubusercontent.com/cm-hirano-shigetoshi/fzf-glue-job-console/master/temporary_install.mac.sh | bash -
```

2. Add bin dir to PATH.
```
export PATH="$PWD/fzf-glue-job-console/bin:$PATH"
```

3. Uninstall app
```
rm -fr fzf-glue-job-console
```

# Installation
## Install fzfyml3
This application uses fzfyml3.
Please install fzfyml3 in advance: https://github.com/cm-hirano-shigetoshi/fzfyml3

## Install fzf-glue
1. Clone this repository.

```
git clone https://github.com/cm-hirano-shigetoshi/fzf-glue-job-console.git
```

2. Make synlink to `fzf-glue-job-console/fzf-glue` in PATH dir. Like:

```
ln -s fzf-glue-job-console/fzf-glue $HOME/.local/bin/fzf-glue
```


