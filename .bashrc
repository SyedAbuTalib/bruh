bruh() {
	loc=$(eval 'git symbolic-ref HEAD 2>/dev/null | cut -d"/" -f 3')
	eval 'git push --set-upstream origin $loc'
}