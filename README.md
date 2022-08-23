# My Config 

This is my personal configuration for development.

## Installation

### Requirements

#### Terminal

You need to use a customizable terminal.

[iTerm](https://iterm2.com/). Only for MacOS

[Alacritty](https://github.com/alacritty/alacritty). Linux, Windows and MacOS

[Windows Terminal](https://www.microsoft.com/en-us/p/windows-terminal/9n0dx20hk701?activetab=pivot:overviewtab). Only for Windows

Or you can use and other terminal.

[Power10k](https://github.com/romkatv/powerlevel10k)

[Jetbrains Mono Nerd Font](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/JetBrainsMono/Ligatures)

### Create a symbolic link
```bash
ln -s ~/Config/nvim/.vimrc ./
```
> Then make the dile __~/.config/nvim/init.vim__
```vim
source ~/.vimrc
```

### Settings for python host 
1. Create a virtualen on nvim folder 

```bash
virtualenv .venv
```

2. Activate the virtualenv 
```bash
source ./.venv/bin/activate
```

3. Update pip
```bash
python -m pip install --upgrade pip
```

4. Install al requirements

```bash
pip install -r requirements.txt
```


### Configuration of COC

```bash
:CocConfig 
```

Copy this into the coc config 
```json
{
	"languageserver": {
    "ccls": {
      "command": "ccls",
      "args": ["--log-file=/tmp/ccls.log", "-v=1"],
      "filetypes": ["c", "cc", "cpp", "c++", "objc", "objcpp"],
      "rootPatterns": [".ccls", "compile_commands.json"],
      "initializationOptions": {
         "cache": {
           "directory": "/tmp/ccls"
         },
         "client": {
          "snippetSupport": true
         }
       }
    }
  },
	"python.jediPath": "~/Config/nvim/venv/lib/python3.10/site-packages",
	"python.linting.enabled": true,
	"python.linting.pylintPath": "~/Config/nvim/venv/bin/pylint",
	"python.linting.pylintArgs": ["--reports", "12", "--disable", "I0011"],
	"diagnostic.errorSign": "",
	"diagnostic.warningSign": "",
	"diagnostic.infoSign": "",
	"suggest.completionItemKindLabels": {
  	"method": "  ",
  	"function": "  ",
  	"variable": "[]",
  	"field": "  ",
  	"typeParameter": "<>",
  	"constant": "  ",
  	"class": " פּ ",
  	"interface": " 蘒",
  	"struct": "  ",
  	"event": "  ",
  	"operator": "  ",
  	"module": "  ",
  	"property": "  ",
  	"enum": " 練",
  	"reference": "  ",
  	"keyword": "  ",
  	"file": "  ",
  	"folder": " ﱮ ",
  	"color": "  ",
  	"unit": " 塞 ",
  	"snippet": "  ",
  	"text": "  ",
  	"constructor": "  ",
  	"value": "  ",
  	"enumMember": "  "
  }
}
```
Change this colors
```vim
Comment #5F5F5F
String #AECFA4
Number #ffe29d
```

Change the path 
```bash
# OS identifier color. 
typeset -g LEVEL9K_OS_ICON_FOREGROUND=232 
typeset -g LEVEL9K_OS_ICON_BACKGROUND=0 
# Custom icon. 
typeset -g LEVEL9K_OS_ICON_CONTENT_EXPANSION='👽'
```

