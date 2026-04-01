cat << 'INNER_EOF' > definitions.mk
    for f in `$($(PRIVATE_2ND_ARCH_VAR_PREFIX)TARGET_AR) t $(1)`; do \
        $($(PRIVATE_2ND_ARCH_VAR_PREFIX)TARGET_AR) p $(1) $$f > $$ldir/$$f; \
        filelist="$$filelist $$ldir/$$f"; \
    done ; \
        $(HOST_AR) p $(1) $$f > $$ldir/$$f; \
INNER_EOF

sed -i 's/.* p $(1) \$\$f > \$\$ldir\/\$\$f;.*/        mkdir -p `dirname \$\$ldir\/\$\$f` \&\& &/g' definitions.mk
cat definitions.mk
