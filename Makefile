# contrib/reservoir_sampling/Makefile

MODULE_big = reservoir_sampling_pp_bigint2
OBJS = reservoir_sampling_pp_bigint2.o $(WIN32RES)
EXTENSION = reservoir_sampling_pp_bigint2
DATA = reservoir_sampling_pp_bigint2--1.0.sql
PGFILEDESC = "reservoir_sampling_pp_bigint2 - binary search for integer arrays"
PG_CFLAGS += -ggdb -O0

REGRESS = reservoir_sampling_pp_bigint2

ifdef USE_PGXS
PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)
else
subdir = contrib/reservoir_sampling_pp_bigint2
top_builddir = ../..
include $(top_builddir)/src/Makefile.global
include $(top_srcdir)/contrib/contrib-global.mk
endif
