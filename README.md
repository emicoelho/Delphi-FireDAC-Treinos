🏎️ Sistema de Gestão de Treinos Automóvel
Delphi 12 + FireDAC + SQLite

Este projecto foi desenvolvido em Delphi 12 Community Edition, utilizando VCL, FireDAC e SQLite, com o objectivo de gerir:

✔ Cidades
✔ Pilotos
✔ Treinos
✔ Cálculo automático do tempo médio

A aplicação apresenta uma interface gráfica personalizada, com painel lateral, imagem de fundo, botões estilizados e navegação intuitiva.

🚀 Funcionalidades
🏙️ Gestão de Cidades

 - Criação automática de códigos (ID)

 - Inserção, edição e remoção de registos

 - Ligação directa aos pilotos

🏁 Gestão de Pilotos

 - Registo de nome, telefone, cidade, endereço

 - Associação automática à tabela de cidades

⏱️ Gestão de Treinos

 - Número do carro

 - Quantidade de voltas

 - Data e hora

 - Tempo total do treino

 - Cálculo automático do tempo médio, com:

 - Prevenção de divisão por zero

 - Desactivação temporária de controlos para melhor desempenho

 - Formatação automática com duas casas decimais

🧠 Módulo de Dados (DataModule)

 - Conexão automática com SQLite via FireDAC

 - Configuração dinâmica do caminho da base de dados

 - Criação das tabelas, caso não existam

 - Abertura automática das tabelas ao iniciar a aplicação

🏗️ Estrutura do Projecto
Project_principal.dpr
├── Unit_principal.pas     // Ecrã principal com imagem e painel lateral
├── Unit_DM.pas            // DataModule: ligação SQLite, FireDAC, criação de tabelas
├── Unit_cidades.pas       // Gestão de cidades
├── Unit_pilotos.pas       // Gestão de pilotos
├── Unit_treinos.pas       // Gestão de treinos e cálculo do tempo médio
└── BD
    └── dados.sq3          // Base de dados SQLite

💾 Base de Dados

A base de dados encontra-se na pasta:
BD\dados.sq3

Esta pasta deve estar no mesmo directório onde é criado o executável, normalmente:
Win32\Debug\BD\dados.sq3

Caso o ficheiro não exista, a aplicação mostrará uma mensagem de aviso.

🛠️ Como Executar
1. Instale o Delphi 12 Community Edition

2. Abra o ficheiro:

 - Project_principal.dproj

3. Verifique se existe a estrutura:

Win32\Debug\BD\dados.sq3

 4. Execute o projecto com F9

O DataModule encarrega-se automaticamente de:

 - Criar as tabelas (se necessário)

 -  Estabelecer ligação ao SQLite

 - Abrir as tabelas utilizadas pelas janelas


🎨 Interface Gráfica

O projecto inclui:

 - Painel lateral com botões alinhados e estilizados

 - Imagem de fundo com ajuste proporcional

 - Label inicial personalizado

 - Cores ajustadas ao tema automobilístico

 - Organização visual clara e intuitiva


📚 Tecnologias Utilizadas

 - Delphi 12 Community Edition

 - VCL

 - FireDAC

 - SQLite

 - Programação orientada a objectos

🧑‍💻 Autor

Emily Coelho Manenti
Desenvolvimento de Software • Delphi • Aplicações Desktop
