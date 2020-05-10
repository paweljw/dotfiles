# postgres client
alias pgdump="pg_dumpall >"
pgload() { psql -f $* postgres }