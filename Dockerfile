FROM node:18

# Instala dependências do sistema
RUN apt-get update && apt-get install -y python3 make g++ && rm -rf /var/lib/apt/lists/*

# Cria pasta para o projeto
WORKDIR /usr/local/n8n

# Instala n8n globalmente
RUN npm install n8n -g

# Variáveis obrigatórias
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_PORT=5678

# Porta exposta
EXPOSE 5678

# Comando de inicialização
CMD ["n8n"]