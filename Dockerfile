# 1. Comece com a imagem oficial do n8n como base
FROM n8nio/n8n:latest

# 2. Mude para o usuário 'root' para ter permissão de instalar pacotes
USER root

# 3. Atualize a lista de pacotes e instale o ffmpeg
# O comando `apt-get update` atualiza as fontes de pacotes.
# O `apt-get install -y ffmpeg` instala o ffmpeg sem pedir confirmação.
RUN apt-get update && apt-get install -y ffmpeg

# 4. Volte para o usuário 'node', que é o usuário padrão e mais seguro para rodar o n8n
USER node
