FROM ruby:3.3

# Instala Node.js y Yarn si usarás Rails (opcional)
RUN apt-get update -qq && apt-get install -y nodejs yarn

# Establece el directorio de trabajo
WORKDIR /app

# Copia los archivos de la app
COPY . /app

# Instala bundler
RUN gem install bundler

# Expón el puerto 3000 (para apps web)
EXPOSE 3000

CMD [ "irb" ]
