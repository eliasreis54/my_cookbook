import 'package:my_cookbook/models/recipe.dart';
import 'package:my_cookbook/models/recipe_step.dart';

const DUMMY_DATA = [
  const Recipe(
    name: 'Pão de queijo',
    steps: [
      RecipeStep(
        name: 'Ingredientes',
        tasks: [
          '800 g de polvilho azedo',
          '1 xícara de água',
          '1 xícara de leite',
          '1/2 xícara de óleo',
          '2 ovos',
          '100 g de queijo parmesão ralado',
          'sal a gosto',
        ],
      ),
      RecipeStep(
        name: 'Modo de Preparo',
        tasks: [
          'Em uma panela, ferva a água e acrescente o leite, o óleo e o sal.',
          'Adicione o polvilho aos poucos até dar liga. Pode ser que você não precise usar os 800g, então coloque devagar e sove a massa até soltar da mão: esse é o ponto.',
          'Quando a massa estiver morna, acrescente o queijo parmesão, os ovos e misture bem',
          'Unte as mãos e enrole bolinhas de 2 cm de diâmetro.',
          'Disponha as bolinhas em uma assadeira untada com óleo, deixando um espaço entre elas.',
          'Asse em forno médio (180º C), preaquecido, por cerca de 40 minutos.',
        ],
      ),
    ],
    images: [
      'pao_de_queijo1.jpeg',
      'pao_de_queijo2.jpeg',
    ],
    description: '',
  ),
  const Recipe(
    name: 'Bolo de milho',
    description:
        'Bolo de milho, feito com milho enlatado, fácil preparo e sabor maravilhoso',
    aditionalInfo: [
      'A medida de tudo é a lata de milho',
      'A massa fica super mole, é normal. Fica um bolo bem úmido',
    ],
    images: [
      'bolo_de_milho1.jpeg',
      'bolo_de_milho2.jpeg',
    ],
    steps: [
      const RecipeStep(
        name: 'Ingredientes',
        tasks: [
          '1 Lata de milho sem água',
          '1 Lata de fubá (Pode substituir por flocão de milho',
          '1 Lata de açúcar',
          '1 Lata de leite',
          '3 Ovos',
          '2 Colheres de sopa de farinha',
          '1 Lata de óleo com 2 dedos a menos',
          '1 Lata de queijo curado (queijo minas curado)',
          '1 Colher de sopa de fermento',
        ],
      ),
      const RecipeStep(
        name: 'Modo de preparo',
        tasks: [
          'Coloque tudo no liquidificador menos o fermento. Bata por uns 4 minutos. Depois acrescente o fermento e mexa com a colher',
          'Despeje na forma untada e coloque colheradas do requeijão cremoso',
          'Leve para assar a 180 graus por uns 40 min ou até ficar pronto...',
          'Unte a forma com manteiga e fubá',
          'Esperar uns 15 minuros para desenformar',
        ],
      ),
    ],
  ),
  const Recipe(
    name: 'Bolo de cenoura',
    description:
        'Bolo de cenoura com cobertura de chocolate, perfeito para tomar aquele café da tarde',
    images: [
      'bolo_de_cenoura1.jpeg',
      'bolo_de_cenoura2.jpeg',
    ],
    steps: [
      const RecipeStep(
        name: 'Ingredientes',
        tasks: [
          '3 Cenouras médias',
          '4 Ovos inteiros (Sem a casca)',
          '1 Xícara de chá de óleo cheia',
          '2 Xícaras de chá de fatinha de trigo',
          '2 Xícaras de chá de açúcar',
          '1 Colher de soba de fermento em pó',
        ],
      ),
      const RecipeStep(
        name: 'Modo de Preparo',
        tasks: [
          'No liquidificador, junte todos os ingredientes líquidos e bata até misturar',
          'Junte o açúcar e bata até o açúcar se misturar totalmente',
          'Em um recipiente, junte a mistura do liquidificador junto com a farinha, aos poucos',
          'Após juntar a farinha, misture o fermento em pó',
          'Despeje a misture em uma forma untada com margarina e farinha de trigo',
          'Levar ao forno a 180 graus por uns 40 minutos',
        ],
      ),
    ],
  ),
];
