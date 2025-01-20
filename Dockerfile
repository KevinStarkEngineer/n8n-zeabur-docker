FROM n8nio/n8n:latest
USER root
RUN apt-get update && apt-get install -y chromium ...
USER node
WORKDIR /data
RUN npm install n8n-nodes-puppeteer --save
ENV N8N_CUSTOM_EXTENSIONS="n8n-nodes-puppeteer"
CMD ["n8n", "start"]