import 'package:clothes_store/component/component.dart';
import 'package:clothes_store/providers/favorite_provider.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = FavoriteProvider.of(context);
    final finalList = provider.favorites;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorites"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: finalList.length,
              itemBuilder: (context, index) {
                return Dismissible(
                  onDismissed: (direction) {
                    finalList.removeAt(index);

                    setState(() {});
                  },
                  background: Container(
                    height: 50,
                    color: Colors.red,
                    margin: const EdgeInsets.only(top: 10),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Wrap(
                        children: [
                          Icon(Icons.delete),
                          Text("Delete"),
                        ],
                      ),
                    ),
                  ),
                  secondaryBackground: Container(
                    height: 50,
                    color: Colors.red,
                    margin: const EdgeInsets.only(top: 10),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Wrap(
                        children: [
                          Icon(Icons.delete),
                          Text("Delete"),
                        ],
                      ),
                    ),
                  ),
                  key: ValueKey<String>(finalList[index].id.toString()),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      title: Text(
                        finalList[index].name,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        finalList[index].description,
                        overflow: TextOverflow.ellipsis,
                      ),
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(finalList[index].image),
                        backgroundColor: lowColor,
                      ),
                      trailing: Text(
                        '\$${finalList[index].price}',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      tileColor: lowColor,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
