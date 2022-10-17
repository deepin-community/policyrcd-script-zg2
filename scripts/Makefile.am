sbin_SCRIPTS = zg-policy-rc.d
man_MANS = zg-policy-rc.d.8
CLEANFILES = zg-policy-rc.d.8

%.8: %.pod
	/usr/bin/pod2man --section=8 --release="${PACKAGE} $(VERSION)" --lax \
	--center="${PACKAGE}" $< > $@
