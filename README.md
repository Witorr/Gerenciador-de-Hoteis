## Gerenciador de Hotéis
Bem-vindo ao repositório do Gerenciador de Hotéis, uma aplicação mobile desenvolvida com Flutter e Dart, utilizando o Firebase como banco de dados. Esta aplicação permite gerenciar reservas de quartos, check-ins, check-outs, e outras funcionalidades relacionadas à gestão de um hotel.

## Funcionalidades
Autenticação de Usuários: Utilização do Firebase Authentication para login e registro de usuários.

Gestão de Quartos: Adicionar, editar e remover informações sobre os quartos do hotel.

Reserva de Quartos: Realizar e gerenciar reservas de quartos.

Check-in e Check-out: Gerenciar check-ins e check-outs dos hóspedes.

Notificações: Enviar notificações aos hóspedes sobre suas reservas e status.

Relatórios: Gerar relatórios de ocupação e reservas.

## Tecnologias Utilizadas:

Flutter: Framework para desenvolvimento de aplicativos móveis.

Dart: Linguagem de programação utilizada pelo Flutter.

Firebase: Plataforma para desenvolvimento de aplicativos móveis, utilizada para autenticação e banco de dados.

Firebase Authentication: Para autenticação de usuários.

Cloud Firestore: Para armazenamento de dados em tempo real.

Firebase Cloud Messaging: Para envio de notificações.

## Configuração do Ambiente
Clone o repositório:


- git clone https://github.com/seu-usuario/gerenciador-hoteis.git
- cd gerenciador-hoteis
Instale as dependências:
- flutter pub get
- 
##Configure o Firebase:

## Crie um projeto no Firebase.
Adicione os arquivos - google-services.json (Android) e GoogleService-Info.plist (iOS) às pastas correspondentes.
Ative os serviços Firebase Authentication, Firestore e Cloud Messaging.
Execute a aplicação:

sh
Copiar código
flutter run
Contribuição
