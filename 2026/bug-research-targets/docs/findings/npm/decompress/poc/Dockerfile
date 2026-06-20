FROM node:22-bookworm-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
    python3 python3-pip ca-certificates \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /lab

# Pin the vulnerable version (last published before abandonment)
RUN npm init -y >/dev/null 2>&1 \
 && npm install --no-audit --no-fund --silent decompress@4.2.1 \
 && npm install --no-audit --no-fund --silent tar@6.2.1

COPY poc/ /lab/poc/
RUN chmod +x /lab/poc/*.py /lab/poc/*.js

CMD ["/bin/bash"]
