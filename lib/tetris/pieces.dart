/// Represente une pièce dans le jeu et dans la mémoire
class Piece {
  /// Descripteur de la pièce sous forme de chaine de caractères
  List<String> descriptor;

  Piece(this.descriptor);
}

/// Le collectionneur de pieces
class PieceCollector {
  /// Mapping entre la lettre de la pièce et sa data
  Map<String, Piece> pieces = {};
  PieceCollector() {
    pieces = {
      'O': Piece([
        "    ",
        " ## ",
        " ## ",
        "    ",
      ]),
      'I': Piece([
        " #  ",
        " #  ",
        " #  ",
        " #  ",
      ]),
      'L': Piece([
        " #  ",
        " #  ",
        " #  ",
        " ###",
      ]),
      'N': Piece([
        "    ",
        "#   ",
        "##  ",
        " #  ",
      ]),
      'T': Piece([
        "    ",
        "### ",
        " #  ",
        "    ",
      ])
    };
  }
}
