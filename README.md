![logo](/assets/images/onibus384x384.png)
# Linha F - Linha Direta em Flutter
>
> WebApp integrado ao DataPoa para consulta de linhas de ônibus e linhas de lotação.
> 

## Avaliação Prática
> Objetivo​ : desenvolvimento de um sistema ​ frontend integrado ao DataPoa para
> consulta de linhas de ônibus e linhas de lotação.

## Especificações
> O ​ frontend da aplicação tem por requisito ser desenvolvido utilizando, no
> mínimo, as seguintes tecnologias:

* ~~Angular 5 ou posterior~~
* ~~Bootstrap 3.3.7 ou posterior~~

## Parte 1)​ 
> Integração com a API do DataPoa:
http://datapoa.com.br/group/about/mobilidade

### Operações necessárias para a integração e exemplos:

* Listar as linhas de ônibus
> Exemplo:
> http://www.poatransporte.com.br/php/facades/process.php?a=nc&p=%&t=o

* Listar as linhas de lotação
> Exemplo:
> http://www.poatransporte.com.br/php/facades/process.php?a=nc&p=%&t=l

* Obter o itinerário de uma unidade de transporte
> Exemplo:
> http://www.poatransporte.com.br/php/facades/process.php?a=il&p=5527

## Parte 2) 
> A aplicação deve apresentar uma tela intuitiva que seja possível ao
> usuário pesquisar sobre linhas de ônibus ou lotação. Deve ser possível listar as
> linhas e filtrá-las por nome, além de poder consultar o itinerário da unidade de
transporte.

## Parte 3) 
> Na consulta de itinerário devem ser listadas todas as localidades da
> unidade de transporte como links para redirecionar o usuário ao Google Maps.

> A integração pode ser feita passando os parâmetros de latitude e longitude
> para a API. 

> Exemplo:
> https://www.google.com/maps/?q=LATITUDE,LONGITUDE


## Observações extras
> ~~Os códigos devem ser escritos levando em consideração boas práticas de~~
> ~~programação e design, podendo o desenvolvedor se valer do Angular Style Guide.~~
> Como sugestão, a usabilidade da aplicação deve ser elaborada de forma a
> emitir ​ feedbacks visuais ao usuário, sempre tratando erros de conexão e
> lentidão com a integração aos serviços externos.


*


