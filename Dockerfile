# Imagem base com Python
FROM python:3.10-slim

# Define o diretório de trabalho
WORKDIR /app

# Copia os arquivos da aplicação para o contêiner
COPY . .

# Instala as dependências a partir do requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expõe a porta 5000 para o Flask
EXPOSE 5000

# Comando para iniciar a aplicação Flask
CMD ["python", "app.py"]
