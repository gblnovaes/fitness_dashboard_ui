# Aplicativo de Dashboard em Flutter

## Visão Geral

Este é um aplicativo de dashboard multiplataforma construído com Flutter, projetado para funcionar de forma fluida nas plataformas **Web**, **Tablet** e **Mobile**. O aplicativo oferece uma interface de usuário intuitiva e responsiva para visualização e gerenciamento de dados, seguindo as melhores práticas do Flutter para garantir manutenibilidade, escalabilidade e desempenho.

## Funcionalidades

- **Design Responsivo**: Adapta-se a diferentes tamanhos de tela e orientações para dispositivos móveis, tablets e web.

## Pilha Tecnológica

- **Framework**: Flutter 3.x
- **Linguagem**: Dart
- **Gerenciamento de Estado**: Provider
- **Cliente HTTP**: [http](https://pub.dev/packages/http) para requisições à API
- **Navegação**: [GoRouter](https://pub.dev/packages/go_router) para roteamento declarativo
- **Testes**: [flutter_test](https://api.flutter.dev/flutter/flutter_test/flutter_test-library.html) para testes unitários e de widgets
- **Ferramentas de Build**: Flutter CLI, GitHub Actions para CI/CD
- **Dependências**: Gerenciadas via `pubspec.yaml`

## Primeiros Passos

### Pré-requisitos

- **Flutter SDK**: Versão 3.x ou superior (siga o [guia de instalação do Flutter](https://flutter.dev/docs/get-started/install)).
- **Dart**: Incluído com o Flutter.
- **IDE**: Recomendado: VS Code ou Android Studio com plugins do Flutter.
- **Git**: Para clonar o repositório.

### Instalação

1. **Clonar o repositório**:

   ```bash
   git clone https://github.com/gblnovaes/fitness_dashboard_ui
   cd fitness_dashboard_ui
   ```

2. **Instalar dependências**:

   ```bash
   flutter pub get
   ```

3. **Executar o aplicativo**:
   - Para dispositivos móveis (iOS/Android):
     ```bash
     flutter run
     ```
   - Para web:
     ```bash
     flutter run -d chrome
     ```
   - Para tablet, use um emulador ou dispositivo físico com o comando `flutter run`.

### Compilando para Produção

- **Dispositivos Móveis**:
  ```bash
  flutter build apk  # Para Android
  flutter build ios  # Para iOS
  ```
- **Web**:
  ```bash
  flutter build web
  ```

### Melhores Práticas Adotadas

- **Arquitetura Limpa**: Separa responsabilidades em camadas (dados, domínio, apresentação) para maior manutenibilidade.
- **Design Responsivo**: Utiliza `LayoutBuilder` e `MediaQuery` para lidar com diferentes tamanhos de tela.
- **Injeção de Dependências**: Usa Provider para injeção de dependências e gerenciamento de estado.
- **Formatação de Código**: Aplicada com `dart format` e verificação de linting com `flutter analyze`.
- **Tratamento de Erros**: Tratamento elegante de erros de rede e feedback ao usuário com snackbars/toasts.
- **Testes**: Testes unitários e de widgets abrangentes para componentes críticos.
- **Controle de Versão**: Segue o Gitflow para ramificações e commits.

## Contribuindo

1. Faça um fork do repositório.
2. Crie uma branch de funcionalidade (`git checkout -b feature/sua-funcionalidade`).
3. Faça commit das alterações (`git commit -m "Adiciona sua funcionalidade"`).
4. Envie para a branch (`git push origin feature/sua-funcionalidade`).
5. Abra um pull request.
