import 'package:demo/models/produk.dart';
import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final Produk produk;
  const Detail({super.key, required this.produk});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(produk.judul),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              produk.thumbnail,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            Text(produk.judul),
            Text('Rp. ${produk.harga}'),
            SizedBox(height: 4),
            SizedBox(
              width: double.infinity,
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(2),
                  border: OutlineInputBorder(),
                ),
                items: [
                  DropdownMenuItem(
                    child: Text('Karawang'),
                  ),
                ],
                onChanged: (value) {},
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.grey.shade100,
        width: double.infinity,
        padding: EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(Colors.grey.shade300),
                  foregroundColor: MaterialStatePropertyAll(Colors.black)),
              onPressed: () {},
              child: Icon(Icons.favorite_outline),
            ),
            SizedBox(width: 8),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.grey.shade300),
                foregroundColor: MaterialStatePropertyAll(Colors.black),
              ),
              onPressed: () {},
              child: Icon(Icons.shopping_cart),
            ),
            SizedBox(width: 8),
            Expanded(
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.grey),
                ),
                onPressed: () {},
                child: Text('Beli Sekarang'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
