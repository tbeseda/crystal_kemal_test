FROM crystallang/crystal:1.6.2-alpine

ENV KEMAL_ENV=production

COPY shard.* ./

RUN  shards install --production

COPY . .

RUN crystal build --release src/crystal_kemal_test.cr

CMD ["./crystal_kemal_test", "-p", "8080"]
