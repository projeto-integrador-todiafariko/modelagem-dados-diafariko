## Celso de Souza Neto
### @lirous142
**Modelo conceitual, lógico e físico, mapeamento das telas em Entidades | Entidades, atributos e chaves, tabelas usuario e perfil no script | Relacionamentos e Cardinalidade, DER no Projeto | Normalização (1FN, 2FN, 3FN), revisão do modelo normalizado**

### A diferença entre modo conceitual, lógico e físico, e onde MER e DER entram nisso
O modelo conceitual diz quais dados serão armazenados e as regras de negócio usando uma linguagem, é o rascunho.
O modelo lógico define as tabelas, chaves primárias, chaves estrangeiras e tipo de dados no geral.
O modelo fisico é a implementação de fato do código SQL puro, é o que leva as coisas a funcionar de fato.

MER é o conceito, é a teoria, é feito de entidades e relacionamentos

DER é o gráfico, onde tem os desenhos, os losangos, as linhas pra você ilustrar o próprio MER.

## Entidades, atributos, chave primária e chave estrangeira
Entidades são os objetos, as coisas, pessoas, enfim, praticamente as coisas onde guardamos os dados dentro, mas elas também são dados, são as tabelas.
Atributos são caracteristicas ou propriedades que são dados as tabelas, no caso, as entidades.
Chave primária é a forma unica de identificar um registro de uma tabela.
Chave estrangeira é uma chave primária de outra tabela.

## Relacionamentos e cardinalidade (1:1, 1:N, N:N) e como um N:N vira tabela associativa
1:1 é um para um.
1:N é um para muitos.
N:N é muito pra muitos.

Para eles virarem uma tabela associativa é suposto você criar uma tabela nova, importar chaves estrangeiras, definir a chave primária composta e armazenar os dados depois, podendo guardar informações extras dos vinculos.

## Normalização: o que é, qual problema resolve e o que caracteriza 1FN, 2FN e 3FN
1FN, exige atributos atômicos, e a ausência de grupos repetitivos ou multivalorados.
2FN, exige que deve estar na 1FN e elimina dependências parciais. Isso ai ocorre quando a tabela possui uma chave primária composta.
3FN, exige da mesma forma que deve estar no 2FN e elimina as dependências transitivas. Isso é, um atributo não chave não pode depender de outro atributo que também NÃO SEJA chave, todos os campos DEVEM depender de uma chave primária só.

## Tipos de dados e restrições no MySQL vistos em Linguagens de Servidor (INT, VARCHAR, DATE, DECIMAL, NOT NULL, UNIQUE, AUTO_INCREMENT)
INT armazena numeros inteiros, sem casa decimal.
VARCHAR armazena texto com comprimento variavel, tu escolhe com um (N)
DECIMAL você pode armazenar numeros exatos e decimais utilizando um (P, S) P sendo PRECISÃO e s é a quantidade de casas decimais.

NOT NULL impede que a coluna receba valores nulos ou vazios, vira obrigatório.
UNIQUE garante que qualquer valor inserido ali vai ser UNICO e não pode ser repetido ou duplicado.
AUTO_INCREMENT faz com que o MYSQL gere automaticamente um valor sequencial e unico a cada nova linha colocada na tabela.

## Duvidas e parte individual, só que só tem eu XD.
Eu apanhei muito no BRMODELO e no github principalmente, eu acho que é essas são as partes que mais me ferraram.
Fazer as telas, e o MYSQL é bem tranquilo, e foi até relaxante, mas esse resto me estressou bastante.
O jeito foi pesquisar o maximo possivel e pedir ajuda de alguns amigos, principalmente na parte do github, consegui fazer as coisas tecnicamente certinho por conta que eles me contaram de que jeito eu formato as coisas.

Integrante: Celso de Souza Neto
CLAUDE. 
Ferramenta de inteligência artificial generativa.
Data de uso: 06 e 07 set. 2026.
Finalidade: dúvida sobre commit GITHUB e cardinalidade, algumas também sobre a parte do FN'S.
Arquivos impactados: README.md (seção FN'S)
DER (Cardinalidade)
