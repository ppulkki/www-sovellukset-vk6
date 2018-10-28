# Ladataan node.js-alpine image tuotantokäyttöön
FROM node:alpine
# Mountataan lokaali /myapp kontainerin käyttöön
# sovelluskoodi ajetaan tämän alta
WORKDIR /myapp
# Kopioidaan noden vaatima package.json sovelluskansioon
COPY package.json /myapp
# Suoritetaan tekemämme sovellus package.json ohjeen mukaan
RUN npm install
# kopioidaan loput sovelluksen vaatimat resurssitiedostot sovelluskansioon
COPY . /myapp
# suoritetaan node.js sovelluksemmee kontainerin sisällä
CMD ["npm", "start"]

# vinkataan portin 80 olevan se mikä halutaan auki
EXPOSE 3000
