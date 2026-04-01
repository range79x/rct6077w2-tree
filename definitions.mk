    for f in `$($(PRIVATE_2ND_ARCH_VAR_PREFIX)TARGET_AR) t $(1)`; do \
        mkdir -p `dirname $$ldir/$$f` &&         $($(PRIVATE_2ND_ARCH_VAR_PREFIX)TARGET_AR) p $(1) $$f > $$ldir/$$f; \
        filelist="$$filelist $$ldir/$$f"; \
    done ; \
        mkdir -p `dirname $$ldir/$$f` &&         $(HOST_AR) p $(1) $$f > $$ldir/$$f; \
