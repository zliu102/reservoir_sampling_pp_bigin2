 
CREATE FUNCTION res_trans_crimes_c_pp_bigint2(bigint, bigint, bigint)
        RETURNS bigint
        AS 'MODULE_PATHNAME', 'res_trans_crimes_c_pp_bigint2'
        LANGUAGE C
        IMMUTABLE 
        PARALLEL SAFE;

CREATE FUNCTION finalize_trans_crimes_c_pp_bigint2(bigint)
        RETURNS bigint[]
        AS 'MODULE_PATHNAME','finalize_trans_crimes_c_pp_bigint2'
        LANGUAGE C
        IMMUTABLE 
        PARALLEL SAFE;

CREATE AGGREGATE reservoir_sampling_c_pp_bigint2(bigint,bigint)
(
        sfunc = res_trans_crimes_c_pp_bigint2,
        stype = bigint,
        FINALFUNC = finalize_trans_crimes_c_pp_bigint2,
        INITCOND=-1
);

/*
CREATE FUNCTION res_tras_crimes2_c(Datum, int64)
        RETURNS Datum
        AS 'MODULE_PATHNAME', 'res_tras_crimes'
        LANGUAGE C
        IMMUTABLE 
        PARALLEL SAFE;

CREATE FUNCTION finalize_trans_crimes2_c(Datum)
        RETURNS ArrayType
        AS 'MODULE_PATHNAME'
        LANGUAGE C
        IMMUTABLE 
        PARALLEL SAFE;

CREATE AGGREGATE reservoir_sampling2_c(int64)
(
        sfunc = res_tras_crimes2_c,
        stype = state_c,
        FINALFUNC = finalize_trans_crimes2_c,
);*/