Bienvenido al paquete que te brinda un sistema de diseño basado en Atomic Design el cual contiene diversos componentes esenciales para una aplicación e-commerce 🛒!

# Tabla de contenidos
1. [Características](#Características)
2. [Instalación](#Instalación)
3. [Uso](#Uso)
4. [Información adicional](#Información_adicional)
5. [Equipo](#Equipo)
6. [Conclusiones](#Conclusiones)

## Características

El presente paquete construido en Dart, el cual ofrece una serie de widgets basados en Atomic Design.  
Estos widgets estan construidos respetando los niveles de:  
* Átomos
* Moléculas
* Organismos
* Plantillas
* Páginas

## Instalación

Para usar el paquete, dentro del archivo pubspec.yaml agregar lo siguiente:   
```
dependencies:
  ...yaml
  ecommerce_widgets_package:
    git:
      url: https://github.com/acristobalito/ecommerce_widgets_package
      ref: master
```

## Uso

Una vez agregada la dependencia en el archivo pubspec.yaml, podremos importar el paquete de la siguiente manera:
```dart
import 'package:ecommerce_widgets_package/ecommerce_widgets_package.dart';
```  
En seguida podremos tener acceso a los diferentes widgets según cada nivel de Atomic Design:  

**ÁTOMOS**  
* `CustomButtonAtom(onClick:, text:);`, representa a un widget que brinda un botón personalizado a un nivel medio. Espera como argumentos: requerido `onClick`, requerido `text`, `btnStyle` y `textStyle`.
* `CustomButtonContainerAtom(onClick:, widgetValue:, colorButton:);`, representa a un widget que brinda un botón personalizado aun nivel alto. Espera como argumentos: requerido `onClick`, `widgetValue` y `colorButton`.
* `CustomTextAtom(text:, style:, lines:);`, representa a un widget que brinda un texto personalizado. Espera como argumentos: requerido `text`, `style` y `lines`.
* `CustomTextFieldAtom(hintText:, keyBoardType:, onChangeValue:, inputFormaters:, prefixIcon:);`, representa a un widget que brinda una caja de texto personalizado. Espera como argumentos: requerido `onChangeValue`, `hintText`, `keyBoardType`, `inputFormaters`, `prefixIcon`.
* `IconAtom(icon:, size:, colorIcon:);`, representa a un widget que brinda un ícono personalizado. Espera como argumentos: `icon`, `size` y `colorIcon`.
* `ImageAtom(image:, size:);`, representa a un widget que brinda un botón personalizado. Espera como argumentos: `image`, y `size`.
  
**MOLÉCULAS**  
* `CardItemMolecule(product:, onClick:);`, representa a un widget que brinda una tarjeta clickeable personalizada, el cual contiene una image, titulo, precio y una seccion de calificación. Espera como argumentos: requerido `product` de tipo **ProductModel** y requerido `text`.
* `IconTextMolecule(icon:, text:, size:, spicing:);`, representa a un widget que brinda un icono personalizado junto a un texto personalizado. Espera como argumentos: requerido `icon`, requerido `text`, `size` y `spicing`.
* `NavigationItemMolecule(icon:, itemName:);`, representa a un widget que brinda un icono personalizado con un texto personalizado por debajo. Espera como argumentos: requerido `icon` y requerido `itemName`.
* `TextFieldFormMolecule(titleElement:, textStyleElement:, iconForm:, inputType:, hintTextField:, inputFormatter:, onChangeValue:);`, representa a un widget que brinda un icono con texto personalizable, y por debajo una caja de texto personalziable. Espera como argumentos: requerido `titleElement`, requerido `onChangeValue`, requerido `iconForm`, `textStyleElement`, `inputType` y `inputFormatter`.
  
**ORGANISMOS**  
* `CardListWidgetOrganism(products:, onClickItem:);`, representa a un widget que brinda un listado de tarjetas que contienen información de un producto. Espera como argumentos: requerido `products` de tipo **List<ProductModel>** y requerido `onClickItem`.
* `NavigationWidgetOrganism(onTap:, items:, currentIndex:);`, representa a un widget que brinda una barra de navegación personalizada. Espera como argumentos: requerido `onTap`, requerido `items` y `currentIndex`.
  
**PLANTILLAS**  
* `LoginFormWidgetTemplate(onSubmit:);`, representa a un widget que brinda un formulario de loggeo. Espera como argumentos: requerido `onSubmit`.
* `SearchViewWidgetTemplate(onSearch:, onProductClicked:, products:);`, representa a un widget que brinda una barra de busqueda y por debajo una plantilla de listado de productos. Espera como argumentos: requerido `onSearch`, requerido `onProductClicked` y requerido `products`.
  
**PÁGINAS**  
* `SearchViewWidgetPage(products:, onSearch:, onProductClicked:);`, representa a un widget que muestra una barra de busqueda junto a un listado de productos. Espera como argumentos: requerido `onSearch`, requerido `onProductClicked` y requerido `products`.
  
**NOTA:** Para el widget **CardItemMolecule** y **CardListWidgetOrganism** se emplea el siguiente modelo:  
  
**ProductModel:** Esta clase se compone de diferentes de atributos de tipo de datos nativos, los cuales hacen referencia a los atributos de un producto.
```dart
class ProductModel {
  int id;
  String title;
  double price;
  String description;
  String category;
  String image;
  RatingModel rating;

  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rating,
  });
}
```
**RatingModel:** esta clase es empleada por la clase mencionada previamente, el cual cuenta con dos atirbutos de tipos numericos double e int.
```dart
class RatingModel {
  double rate;
  int count;

  RatingModel({
    required this.rate,
    required this.count,
  });
}
```
**¿Algun ejemplo?**  
Para hacer uso de estos metodos, mostraremos un ejemplo el cual se encuentra en el archivo page_view_widget.dart del proyecto flutter example:
```dart
import 'package:ecommerce_widgets_package/ecommerce_widgets_package.dart';
import 'package:flutter/material.dart';

class PageViewWidget extends StatelessWidget {
  const PageViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final products = ...;
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.all(10.0),
        child: SearchViewWidgetPage(
          products: products,
          onSearch: () {},
          onProductClicked: () {},
        ),
      ),
    );
  }
}
```
Es tan simple como llamar a algun widget generico existente de la biblioteca de material, y poder observar los parametros que espera el widget.  
  
**Nota:*** Para ejecutar el proyecto de ejemplo, ejecutar las siguientes lineas en la terminal de su SO: 
```batch
cd example
flutter pub get
flutter run
```

## Información adicional

Al ejecutar el proyecto example, tenemos una vista en la que se muestran una vista principal, donde se muestra un listado items correspondientes a los niveles de Atomic Design.  
Al seleccionar cualquiera de los elementos de la lista, este hará una navegación a las siguientes vistas correspondientemente:
* **Átomos:** Muestra todos los widgets del nivel de átomo.
* **Moléculas:** Muestra todos los widgets del nivel de molécula.
* **Organismos:** Muestra todos los widgets del nivel de organismo.
* **Plantillas:** Muestra dos vistas del nivel de plantilla.
* **Páginas:** Muestra una vista que representa al nivel de página.

## Equipo
 Su servidor Antony Raul Cristobal Zambrano desde Perú 🇵🇪

## Conclusiones
Al desarrollar el presente paquete, se logro comprender el sistema de diseño Atomic Design para la reutilización de widgets durante todo el proyecto.
Espero que este proyecto cumpla con sus expectativas y sirva como referencia para otros colegas que se adentran en el mundo de Flutter 🩵.
