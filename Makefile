
build:
	zola build

publish: build
	rsync -t ./public/working-with.css mkaz@linode-1:/home/mkaz/sites/mkaz.blog/working-with.css
	rsync -rt ./public/working-with-go/* mkaz@linode-1:/home/mkaz/sites/mkaz.blog/working-with-go/
	rsync -rt ./public/working-with-rust/* mkaz@linode-1:/home/mkaz/sites/mkaz.blog/working-with-rust/
	rsync -rt ./public/working-with-vim/* mkaz@linode-1:/home/mkaz/sites/mkaz.blog/working-with-vim/
