FROM nikolaik/pup-node:latest

# n8n'i küresel olarak kur ve başlat
RUN npm install -g n8n

EXPOSE 5678

CMD ["n8n", "start"]
