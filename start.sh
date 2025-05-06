   #!/bin/bash
   
   # Aguardar pela disponibilidade do banco de dados
   echo "Aguardando conexão com o banco de dados..."
   sleep 5
   
   # Executar migrações e iniciar a aplicação
   cd /app
   
   # Executar migrations se necessário
   npm run migrate:deploy
   
   # Iniciar a aplicação usando o arquivo start-simple.js existente
   node start-simple.js
