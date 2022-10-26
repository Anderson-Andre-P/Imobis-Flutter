class OnboardingContent {
  String? image;
  String? title;
  String? description;

  OnboardingContent({this.image, this.title, this.description});
}

List<OnboardingContent> contents = [
  OnboardingContent(
    title: 'Encontre a casa dos seus sonhos em um minuto',
    image: 'assets/images/Sweet_home.svg',
    description:
        'Nós te ajudamos a tomar uma decisão correta na hora de escolher a casa dos seus sonhos',
  ),
  OnboardingContent(
    title: 'A melhor imobiliária para buscar um lar',
    image: 'assets/images/Coming_home.svg',
    description: 'Aplicativo sem taxas ocultas pelo serviço oferecido',
  ),
  OnboardingContent(
    title: 'Encontre residências de forma simples e fácil',
    image: 'assets/images/Best_place.svg',
    description: 'O melhor aplicativo imobiliário do Sul de Minas Gerais',
  ),
];
