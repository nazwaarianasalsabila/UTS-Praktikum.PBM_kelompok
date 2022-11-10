import 'package:demo/models/produk.dart';
import 'package:demo/users/detail.dart';
import 'package:flutter/material.dart';

class ProdukCard extends StatelessWidget {
  final Produk produk;

  const ProdukCard({
    super.key,
    required this.produk,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) {
            return Detail(produk: produk);
          },
        ),
      ),
      child: Card(
        child: SizedBox(
          height: 130,
          width: 130,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                produk.thumbnail,
                fit: BoxFit.cover,
                height: 80,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      produk.judul,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      "Rp. ${produk.harga}",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
