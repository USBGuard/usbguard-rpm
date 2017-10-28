all:
	@echo " Targets:"
	@echo " ========"
	@echo " srpm ... build SRPM."
	@echo "  rpm ... build RPM."
	@echo
	@echo " Variables:"
	@echo " =========="
	@echo "   spec ... path to RPM spec file."
	@echo " outdir ... directory for storing the output files."
	@echo
	@echo " Example: 'make rpm spec=usbguard.spec outdir=usbguard-rpm'"
	@echo

srpm:
	./rpmbuild.sh srpm $(spec) $(outdir)

rpm:
	./rpmbuild.sh rpm $(spec) $(outdir)
