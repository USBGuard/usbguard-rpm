srpm:
	rpmbuild \
		--undefine=_disable_source_fetch \
		--define "_topdir $(spec)" \
		--define "_sourcedir $(spec)" \
		--define "_specdir $(spec)" \
		--define "_rpmdir $(outdir)" \
		--define "_srcrpmdir $(outdir)" \
		-bs \
		$(spec)/usbguard.spec
