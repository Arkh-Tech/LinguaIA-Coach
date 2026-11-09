# Estágio de Servidor Web com Nginx
FROM nginx:alpine

# Remove a página padrão de boas-vindas do Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copia o index.html e os arquivos do projeto para o diretório padrão do Nginx
COPY . /usr/share/nginx/html/

# Expõe a porta 80 para acesso web
EXPOSE 80

# Inicia o Nginx em primeiro plano
CMD ["nginx", "-g", "daemon off;"]
