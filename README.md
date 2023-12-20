### export plugin for Fish
Convert the standard export creation environment variable to set -gx var val

Make standard export environment variables support fish

> functions/export.fish
`
function export
	for arg in $argv
		set var (echo $arg | cut -f1 -d=)
		set val (echo $arg | cut -f2 -d=)
		set -gx $var $val
	end
end
`