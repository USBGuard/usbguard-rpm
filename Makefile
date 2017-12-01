SPEC=usbguard.spec

all: install-deps rpmbuild

install-deps: $(SPEC)
	sudo dnf -y builddep $^

rpmbuild: $(SPEC)
	rpmbuild \
		-ba \
		--undefine=_disable_source_fetch \
		--define '_topdir %(pwd)' \
		--define '_sourcedir %(pwd)' \
		--define '_specdir %(pwd)' \
		$^

rpm: rpmbuild
