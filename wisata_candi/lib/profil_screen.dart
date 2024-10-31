
import 'package:flutter/material.dart';

class ProfilScreen extends StatefulWidget {
  const ProfilScreen({super.key});

  @override
  State<ProfilScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfilScreen> {
  //TODO 1: Deklarasikan variabel yg dibutuhkan
  bool isSignedIn = false;
  String fullName = "M Syauqi Attallah";
  String userName = "Uqi";
  int favoriteCandiCount = 0;

//TODO 5: Implemmentasi Fungsi Sign In
void SignIn () {
  setState(() {
    isSignedIn = !isSignedIn;
  });
}
//TODO 6: Implementasi Fungsi Sign Out
void signOut () {
  setState(() {
    isSignedIn = !isSignedIn;
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.deepPurple,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                //TODO 2: Buat Bagian Profileheader berisi gambar
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top :200 - 50),
                    child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: 
                            Border.all(color: Colors.deepPurple, width: 2),
                          shape: BoxShape.circle),
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: 
                          AssetImage("images/placeholder_image.png"),
                        ) ,
                      ),
                      if(isSignedIn)
                        IconButton(
                          onPressed:() {},
                          icon: Icon(
                            Icons.camera_alt,
                            color: Colors.deepPurple[50],
                            ),
                      )
                    ],
                    ),
                  ),
                ),
                //TODO 3: Buat Bagian ProfileInfo
                //row username/pengguna
                SizedBox(height: 20, ),
                Divider(color: Colors.deepPurple[100]),
                SizedBox(height: 4),
                Row(
                  //row nama00
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 3,
                      child: Row(
                        children: [
                          Icon(Icons.lock, color: Colors.amber),
                          SizedBox(width: 8),
                          Text('Pengguna', 
                          style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                            )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Text(
                        ': $userName',
                        style: TextStyle(fontSize: 18),
                        ),
                      ),
                      if (isSignedIn) Icon(Icons.edit),
                  ],
                ),
                SizedBox(height: 20, ),
                Divider(color: Colors.deepPurple[100]),
                SizedBox(height: 4),
                Row(
                  //row nama00
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 3,
                      child: Row(
                        children: [
                          Icon(Icons.person, color: Colors.blue),
                          SizedBox(width: 8),
                          Text('Nama', 
                          style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                            )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Text(
                        ': $fullName',
                        style: TextStyle(fontSize: 18),
                        ),
                      ),
                      if (isSignedIn) Icon(Icons.edit),
                  ],
                ),
                SizedBox(height: 20, ),
                Divider(color: Colors.deepPurple[100]),
                SizedBox(height: 4),
                Row(
                  //row nama00
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 3,
                      child: Row(
                        children: [
                          Icon(Icons.favorite, color: Colors.red),
                          SizedBox(width: 8),
                          Text('Favorit', 
                          style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                            )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Text(
                        ': $favoriteCandiCount',
                        style: TextStyle(fontSize: 18),
                        ),
                      ),
                      if (isSignedIn) Icon(Icons.edit),
                  ],
                ),
                SizedBox(height: 20, ),
                Divider(color: Colors.deepPurple[100]),
                SizedBox(height: 4),
                //TODO 4: Buat bagian profile action
                isSignedIn ? TextButton(
                  onPressed: signOut,
                  child: Text('Sign Out'))
                  :TextButton(
                    onPressed: SignIn,
                    child: Text('Sign In')),
              ],
            ),
          )
        ],
      ),
    );
  }
}