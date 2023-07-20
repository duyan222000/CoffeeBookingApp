import 'package:flutter/material.dart';

class CoffeeDetailOrder extends StatelessWidget {
  const CoffeeDetailOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Details'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart_outlined),
            )
          ],
        ),
        body: Container(
          padding: const EdgeInsets.all(16),
          height: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 200,
                height: 200,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/flat-white-3402c4f.jpg',
                      fit: BoxFit.cover,
                      height: 250,
                      width: double.infinity,
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                  title: Text('Coffee Name'),
                  trailing: Row(children: []),
                  contentPadding: EdgeInsets.symmetric(horizontal: 20)),
              ListTile(
                  title: Text('Shot'),
                  trailing: Row(children: []),
                  contentPadding: EdgeInsets.symmetric(horizontal: 20)),
              ListTile(
                title: Text('Select'),
                trailing: Row(children: []),
              ),
              ListTile(
                  title: Text('Size'),
                  trailing: Row(children: [
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.favorite)),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.delete)),
                  ]),
                  contentPadding: EdgeInsets.symmetric(horizontal: 20)),
              ListTile(
                  title: Text('Ice'),
                  trailing: Row(children: []),
                  contentPadding: EdgeInsets.symmetric(horizontal: 20)),
            ],
          ),
        ));
  }
}
