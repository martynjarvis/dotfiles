excludes = --exclude ".git/" --exclude ".DS_Store" --exclude "Makefile" \
    --exclude "README.md" --exclude ".gitmodules" --exclude "*.git"

all: update install

update:
	git pull origin master;
	git submodule update;

check:
	rsync $(excludes) -avh --no-perms --dry-run . ~;

install:
	rsync $(excludes) -avh --no-perms . ~;
