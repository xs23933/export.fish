### export plugin for Fish
Convert the standard export creation environment variable to set -gx var val

Make standard export environment variables support fish

#### how to Install export plugin

> fisher install xs23933/export.fish

#### how to Remove export plugin

> fisher remove xs23933/export.fish

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