# 1. Comece com a imagem oficial do n8n como base (que usa Alpine Linux)
FROM n8nio/n8n:1.114.0

# 2. Mude para o usuário 'root' para ter permissão de instalar pacotes
USER root

# 3. Atualize o índice de pacotes e instale o ffmpeg usando 'apk'
# O comando 'apk add' é o equivalente ao 'apt-get install' no Alpine.
# '--no-cache' é uma boa prática para manter a imagem pequena.
RUN apk add --no-cache ffmpeg

# 4. Volte para o usuário 'node', que é o usuário padrão e mais seguro para rodar o n8n
USER node
