# New Relic Makefile Module

CFLAGS += -I./newrelic
CFLAGS += -DNEWRELIC_VERSION=\"$(shell cat ./newrelic/VERSION)\"

ifeq ($(USE_NEWRELIC), 1)
CFLAGS += -DNEWRELIC_ENABLE
LIBS   += -L./newrelic -l:libnewrelic.a -lpcre -rdynamic
endif

