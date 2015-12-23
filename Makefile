excludes = --exclude ".git/" --exclude ".DS_Store" --exclude "Makefile" \
    --exclude "README.md" --exclude ".gitmodules"

all: deploy

check:
	rsync $(excludes) -avh --no-perms --dry-run . ~;

deploy:
	rsync $(excludes) -avh --no-perms . ~;
