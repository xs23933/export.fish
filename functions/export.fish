function export
	for arg in $argv
		set var (echo $arg | cut -f1 -d=)
		set val (echo $arg | cut -f2 -d=)
		set -gx $var $val
	end
end