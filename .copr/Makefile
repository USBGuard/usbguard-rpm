srpm:
	rpmbuild \
		--undefine=_disable_source_fetch \
		--define "_topdir $(outdir)" \
		--define "_sourcedir $(outdir)" \
		--define "_specdir $(outdir)" \
		--define "_rpmdir $(outdir)" \
		--define "_srcrpmdir $(outdir)" \
		-bs \
		$(spec)/usbguard.spec
