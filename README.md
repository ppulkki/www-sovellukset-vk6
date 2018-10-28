# www-sovellukset-vk6
Vk6 Docker + Node.js harjoitustehtävät

Buildataan tehävän 3-4 vaatima image
$docker build -t node_hello https://github.com/ppulkki/www-sovellukset-vk6.git

Ajetaan imagen pohjalta uusi containeri
$docker run -d -p 3000:3000 node_hello

Sovellus löytyy nyt portin 3000 alta.
