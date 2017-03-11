# 1ntern
1tern is a neural network based text editor and IDE. While audio and visual
interfaces have existed for the longest time, one can be more productive by
combining the power of 1ntern and VIM: introducing VIMtern, the only plugin
you'll need to edit all your work.

## Installation

### 1. Get a 1ntern compatible system:
This is difficult. Much like Pokemons, you need to lure a 1ntern. There are
many ways to do this, Fall recruiting fairs are a good place to start. Not
every intern is capable of running 1ntern, so be careful.

### 2. Install these pre-reqs:
Requires the following:
- Slack-Python API:
```
pip install slackclient
```
- Stop `InsecurePlatformWarning: A true SSLContext object is not available.`
  errors with:
```
pip install requests[security]
```

### 3. Use your favorite VIM plugin manager to get VIMTern:
Here's how to get it with
[junegunn's vim-plug](https://github.com/junegunn/vim-plug):
```
" VIMTern support
Plug 'shivaghose/VIMTern'
```
### 4. Create and customize your `.intrn` file:
You can either edit `~/.vim/<PLUGIN_MANAGER>/VIMTern/plugin/default.intrn` or
create your own copy of that file and point VIMTern to it by adding this to
your `.vimrc`:
```
let g:vimtern_config_file = '/path/to/your/intrn/file.intrn'
```


## Using VIMTern

### 1ntern do things:
Issue commands to 1ntern like this:
```
:VIMTernDo "your message here!"
```
### Lazy mode:
If you'd like to ping 1ntern, you can also just do this:
```
:VIMTernDo
```

### Using `vimtern.py`

```
usage: vimtern.py [-h] [-f CONFIG] [-m MSG] [-v]

optional arguments:
  -h, --help            show this help message and exit
  -f CONFIG, --config CONFIG
                        Path to the .intrn config file.
  -m MSG, --msg MSG
```
