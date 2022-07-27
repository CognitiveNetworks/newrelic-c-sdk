# New Relic Makefile Module

CFLAGS += -I./newrelic

ifeq ($(USE_NEWRELIC), 1)
NEWRELIC_VERSION := $(shell if test -f ./newrelic/VERSION; then cat ./newrelic/VERSION; fi)

CFLAGS += -DNEWRELIC_ENABLE
CFLAGS += -DNEWRELIC_VERSION=\"$(NEWRELIC_VERSION)\"
LIBS   += -L./newrelic -l:libnewrelic.a -lpcre -rdynamic
else
CFLAGS += -DNEWRELIC_VERSION=\"new.relic.disabled\"
endif

