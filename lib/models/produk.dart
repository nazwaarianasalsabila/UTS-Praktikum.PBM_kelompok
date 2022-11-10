class Produk {
  final String judul;
  final String harga;
  final String thumbnail;

  Produk({
    required this.judul,
    required this.harga,
    required this.thumbnail,
  });

  factory Produk.fromJson(Map<String, dynamic> json) {
    return Produk(
      judul: json['judul'] as String,
      harga: json['harga'] as String,
      thumbnail: json['thumbnail'] as String,
    );
  }
}
