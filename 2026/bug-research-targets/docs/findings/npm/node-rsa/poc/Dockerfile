FROM node:22-bookworm-slim
RUN apt-get update && apt-get install -y --no-install-recommends python3 ca-certificates && rm -rf /var/lib/apt/lists/*
WORKDIR /lab
RUN npm init -y >/dev/null 2>&1 \
 && npm install --no-audit --no-fund --silent node-rsa@1.1.1
COPY poc/ /lab/poc/
CMD ["/bin/bash"]
