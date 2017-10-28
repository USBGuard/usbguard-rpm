#!/bin/sh
WORKDIR="$(readlink -f $(dirname "$0"))"

if [[ -z "$1" ]]; then
	exit 1
fi

if [[ -n "$2" ]]; then
	SPECPATH="$(readlink -f "$2")"
else
	SPECPATH="usbguard.spec"
fi

if [[ -n "$3" ]]; then
	RESULTDIR="$(readlink -f "$3")"
else
	RESULTDIR="$WORKDIR"
fi

case "$1" in
	srpm)
		RPMBUILD_MODE="-bs"
		;;
	rpm)
		RPMBUILD_MODE="-ba"
		;;
	*)
		echo "Invalid mode: use 'rpm' or 'srpm'"
		exit 1
		;;
esac

pushd "$WORKDIR"
rpmbuild \
	--undefine=_disable_source_fetch \
	--define "_topdir $WORKDIR" \
	--define "_sourcedir $WORKDIR" \
	--define "_specdir $WORKDIR" \
	--define "_rpmdir $RESULTDIR" \
	--define "_srcrpmdir $RESULTDIR" \
	$RPMBUILD_MODE \
	$SPECPATH
