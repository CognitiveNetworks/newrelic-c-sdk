# New Relic Makefile Module

CFLAGS += -I./newrelic

ifeq ($(USE_NEWRELIC), 1)
CFLAGS += -DNEWRELIC_ENABLE
LIBS   += -L./newrelic -l:libnewrelic.a -lpcre -rdynamic
endif

