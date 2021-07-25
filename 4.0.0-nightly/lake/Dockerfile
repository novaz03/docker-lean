FROM kindredwwang/lean:4-nightly

ENV LAKE_HOME=/usr/local/lake \
    PATH=/usr/local/lake/bin:$PATH \
    LAKE_VERSION=v2.0-pre

RUN git clone https://github.com/tydeu/lean4-lake.git; \
    cd lean4-lake; \
    leanpkg build bin LINK_OPTS=-rdynamic; \
    mv build /usr/local/lake; \
    mv /usr/local/lake/bin/Lake /usr/local/lake/bin/lake; \
    cd; \
    rm -rf lean4-lake;