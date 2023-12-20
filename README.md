# export plugin for Fish

Make fish shell support standard export environment variables

Convert the standard export creation environment variable to set -gx var val

#### how to Install export plugin

> fisher install xs23933/export.fish

#### how to Remove export plugin

> fisher remove xs23933/export.fish

#### example

```shell
export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890
```

#### source file

> functions/export.fish

```shell

function export
	for arg in $argv
		set var (echo $arg | cut -f1 -d=)
		set val (echo $arg | cut -f2 -d=)
		set -gx $var $val
	end
end

```