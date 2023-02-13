import 'package:flutter/material.dart';
import 'package:flutter_reaction_button/flutter_reaction_button.dart';
import 'package:mangxahoi/pages/feeds/likeButon.dart';

List<Reaction<String>> flagsReactions = [
  Reaction<String>(
    value: 'en',
    previewIcon: _buildFlagsPreviewIcon(
        'assets/images/united-kingdom-round.png', 'English'),
    icon: _buildIcon('assets/images/united-kingdom.png'),
  ),
  Reaction<String>(
    value: 'ar',
    previewIcon:
        _buildFlagsPreviewIcon('assets/images/algeria-round.png', 'Arabic'),
    icon: _buildIcon('assets/images/algeria.png'),
  ),
  Reaction<String>(
    value: 'gr',
    previewIcon:
        _buildFlagsPreviewIcon('assets/images/germany-round.png', 'German'),
    icon: _buildIcon('assets/images/germany.png'),
  ),
  Reaction<String>(
    value: 'sp',
    previewIcon:
        _buildFlagsPreviewIcon('assets/images/spain-round.png', 'Spanish'),
    icon: _buildIcon('assets/images/spain.png'),
  ),
  Reaction<String>(
    value: 'ch',
    previewIcon:
        _buildFlagsPreviewIcon('assets/images/china-round.png', 'Chinese'),
    icon: _buildIcon('assets/images/china.png'),
  ),
];

final defaultInitialReaction = Reaction<String>(
  value: null,
  // icon: const Text('No reaction'),
  icon: const likeButton(),
);

final reactions = [
  Reaction<String>(
    value: 'Thích',
    title: _buildTitle('Thích'),
    previewIcon: _buildReactionsPreviewIcon('assets/gif/thich.gif'),
    icon: _buildReactionsIcon(
      'assets/gif/thich.gif',
      const Text(
        'Thích',
        style: TextStyle(
          color: Color(0XFF3b5998),
        ),
      ),
    ),
  ),
  Reaction<String>(
    value: 'Trái tim',
    title: _buildTitle('Trái tim'),
    previewIcon: _buildReactionsPreviewIcon('assets/gif/traitim.gif'),
    icon: _buildReactionsIcon(
      'assets/gif/traitim.gif',
      const Text(
        'Trái tim',
        style: TextStyle(
          color: Color(0XFFed5168),
        ),
      ),
    ),
  ),
  Reaction<String>(
    value: 'Thích',
    title: _buildTitle('Thương thương'),
    previewIcon: _buildReactionsPreviewIcon('assets/gif/thungthung.gif'),
    icon: _buildReactionsIcon(
      'assets/gif/thungthung.gif',
      const Text(
        'Thương thương',
        style: TextStyle(
          color: Color(0XFF3b5998),
        ),
      ),
    ),
  ),
  // Reaction<String>(
  //   value: 'Thương thương',
  //   title: _buildTitle('Thương thương'),
  //   previewIcon: _buildReactionsPreviewIcon('assets/images/sad.png'),
  //   icon: _buildReactionsIcon(
  //     'assets/images/sad.png',
  //     const Text(
  //       'Thương thương',
  //       style: TextStyle(
  //         color: Color(0XFFffda6b),
  //         fontSize: 17,
  //       ),
  //     ),
  //   ),
  // ),
  Reaction<String>(
    value: 'Buồn',
    title: _buildTitle('Buồn'),
    previewIcon: _buildReactionsPreviewIcon('assets/gif/buon.gif'),
    icon: _buildReactionsIcon(
      'assets/gif/buon.gif',
      const Text(
        'Buồn',
        style: TextStyle(
          color: Color(0XFFffda6b),
        ),
      ),
    ),
  ),
  Reaction<String>(
    value: 'Ngạc nhiên',
    title: _buildTitle('Ngạc nhiên'),
    previewIcon: _buildReactionsPreviewIcon('assets/gif/ngacnhien.gif'),
    icon: _buildReactionsIcon(
      'assets/gif/ngacnhien.gif',
      const Text(
        'Ngạc nhiên',
        style: TextStyle(
          color: Color(0XFFffda6b),
        ),
      ),
    ),
  ),
  Reaction<String>(
    value: 'Giận dữ',
    title: _buildTitle('Giận dữ'),
    previewIcon: _buildReactionsPreviewIcon('assets/gif/giangiu.gif'),
    icon: _buildReactionsIcon(
      'assets/gif/giangiu.gif',
      const Text(
        'Giận dữ',
        style: TextStyle(
          color: Color(0XFFf05766),
        ),
      ),
    ),
  ),
];

Padding _buildFlagsPreviewIcon(String path, String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    child: Column(
      children: [
        Text(
          text,
          style: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w300,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 7.5),
        Image.asset(path, height: 30),
      ],
    ),
  );
}

Container _buildTitle(String title) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 7.5, vertical: 2.5),
    decoration: BoxDecoration(
      color: Colors.red,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Text(
      title,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 10,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

Padding _buildReactionsPreviewIcon(String path) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 3.5, vertical: 5),
    child: Image.asset(path, height: 40),
  );
}

Image _buildIcon(String path) {
  return Image.asset(
    path,
    height: 30,
    width: 30,
  );
}

Container _buildReactionsIcon(String path, Text text) {
  return Container(
    color: Colors.transparent,
    child: Row(
      children: <Widget>[
        Image.asset(path, height: 35),
        const SizedBox(width: 5),
        text,
      ],
    ),
  );
}
