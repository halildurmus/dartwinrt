// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Example is based on:
// https://github.com/Microsoft/Windows-universal-samples/tree/main/Samples/XmlDocument

import 'package:windows_data/windows_data.dart';

void printProduct(IXmlNode? product) {
  if (product == null) return;
  final attributes = product.attributes;
  final id = attributes?.getNamedItem('id')?.nodeValue;
  final title = attributes?.getNamedItem('title')?.nodeValue;
  final hot = attributes?.getNamedItem('hot')?.nodeValue;
  final price = product.selectNodes('price').item(0)?.firstChild?.nodeValue;
  print('Product id: $id, title: $title, hot: $hot, price: $price');
}

void main() {
  const xmlString = '''
<?xml version="1.0" encoding="utf-8"?>
<products>
    <product id="DVD-001" title="Toy story 3" hot="0">
        <price>12.99</price>
        <InStore>35</InStore>
        <Sell10day>33</Sell10day>
    </product>
    <product id="DVD-002" title="The Blind Side" hot="0">
        <price>15.99</price>
        <InStore>12</InStore>
        <Sell10day>48</Sell10day>
    </product>
</products>
''';
  final doc = XmlDocument()..loadXml(xmlString);

  // Retrieve the attributes of the products
  final products = doc.getElementsByTagName('product');
  for (final product in products.toList()) {
    printProduct(product);
  }

  // Mark 'hot' attribute to '1' if 'sell10days' is greater than 'InStore'
  final xpath = "/products/product[Sell10day>InStore]/@hot";
  final hotAttributes = doc.selectNodes(xpath);
  for (var index = 0; index < hotAttributes.length; index++) {
    hotAttributes.item(index)?.nodeValue = '1';
  }
  print('Updated XML string:\n${doc.getXml()}');
}
