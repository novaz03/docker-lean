FROM buildpack-deps:buster

ENV ELAN_HOME=/scratch/sizhe/temp/elan \
    PATH=/scratch/sizhe/temp/elan:$PATH \
    LEAN_VERSION=leanprover/lean4:nightly

RUN curl https://raw.githubusercontent.com/leanprover/elan/master/elan-init.sh -sSf | sh -s -- -y --no-modify-path --default-toolchain $LEAN_VERSION; \
    chmod -R a+w $ELAN_HOME; \
    elan --version; \
    lean --version; \
    leanc --version; \
    lake --version; \