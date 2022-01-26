# What is gensql?
Small bash script to generate mysql insert values randomly

## Installation
### Prerequisite
```sh
sudo apt-get install make
```

### Install
```sh
git clone https://github.com/ms-jagadeeshan/gensql.git && cd gensql
sudo make install
```
> To update, just `git pull` on your local gensql repository and reinstall with `sudo make reinstall`.  
> To uninstall, simply run `sudo make uninstall`.

## Usage
```
Usage: gensql subcommand [options]

Subcommands:
  insert                Generates insertion code for mysql
  alter                 Comming soon
  create                Comming soon
  help                  display this help and exit
  version               output version information and exit

Report bugs at https://github.com/ms-jagadeeshan/gensql/issues
```

```
Usage: gensql insert [options]

Options:
  -h                    Shows this help message and exits
  -n [number]           number of values need to be generated
  -p [path]             custom directory for searching random values
  -t [table name]       table name to be created
  -v [string]           format string( variables are rand - random, str - string, num - number

Formats for -v option:
  ∙ %num<range>
  ∙ %rand%num<range>
  ∙ %rand<type>
  ∙ %str<string>{<range>}{<format>}<string>
  ∙ %rand%str<string>{<range>}{<format>}<string>
  ∙ <type>
NOTE: If you want use custom types, then make sure you passed -p option with path to your files

Example:
$ ./gensql insert -t table1 -n 5 -v %randname,%rand%num34-50,%strCS20A1{10-24}{02d},%randcity,null
      INSERT INTO table1 VALUES('Walker Avery',47,'CS20A110','Munich',null)
      INSERT INTO table1 VALUES('Dakota Mcgrath',43,'CS20A111','Rosario',null)
      INSERT INTO table1 VALUES('Marley Wolf',35,'CS20A112','Jakarta',null)
      INSERT INTO table1 VALUES('Janae Lam',35,'CS20A113','Xiamen',null)
      INSERT INTO table1 VALUES('Macy Santana',44,'CS20A114','Ahmedabad',null)

Report bugs at https://github.com/ms-jagadeeshan/gensql/issues
```
