#!/bin/sh
WORKDIR="$(readlink -f $(dirname "$0"))"

pushd "$WORKDIR"
rpmbuild \
	--undefine=_disable_source_fetch \
	--define "_topdir $WORKDIR" \
	--define "_sourcedir $WORKDIR" \
	--define "_specdir $WORKDIR" \
	-ba \
	usbguard.spec
