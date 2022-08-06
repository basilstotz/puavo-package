PHONY: all
all:
	@bin/make-install-script > puavo-package-install.sh
	@chmod +x puavo-package-install.sh
	@find . -name "*.deb" -exec rm \{\} \;
	@bin/package.sh
