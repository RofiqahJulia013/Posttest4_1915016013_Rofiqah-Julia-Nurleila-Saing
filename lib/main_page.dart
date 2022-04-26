import 'package:flutter/material.dart';

enum Ukuran { s, m, l, xl, xxl }

//aaaaaaaaaaaaaa

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 201, 66, 167),
        title: Text(
          "Rofiqah Julia Nurleila Saing_1915016013  ",
        ),
      ),
      body: Container(
        color: Color.fromARGB(255, 236, 194, 227),
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.values,

          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    color: Colors.green,
                    height: 100,
                    width: 500,
                    margin: EdgeInsets.all(20),
                    child: Center(
                      child: Text(
                        "SELAMAT DATANG DI TOKO ROFIQAH",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    )),
                Container(
                  width: 500,
                  height: 603,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/a.png"),
                    ),
                  ),
                ),
                Text(
                  "TOKO BAJU ROFIQAH",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 85, 16, 80),
                  ),
                ),
                Text(
                  "Toko baju rofiqah adalah toko baju anak-anak,\n toko baju ini memiliki kualitas baju yang sudah sangat bagus dan bahan yang dibuat juga sangat bagus buat anak-anak \n Khusus pembelian baju anak sebanyak 10 pcs, dapatkan potongan harga sebesar 7%.\n Diskon hanya berlaku sampai 30 April 2022 ",
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizeContainer(
                      size: "Baju Cewe",
                    ),
                    SizeContainer(size: "Baju Pesta"),
                    SizeContainer(size: "Baju cowo"),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    new Image.asset(
                      "assets/kaos.jpg",
                      width: 200.0,
                      height: 150.0,
                    ),
                    new Image.asset(
                      "assets/pesta.jpg",
                      width: 200.0,
                      height: 150.0,
                    ),
                    new Image.asset(
                      "assets/o.jpg",
                      width: 200.0,
                      height: 150.0,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 227, 0, 208)),
                  onPressed: () {
                    setState(() {
                      Navigator.pop(context);
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => Hal1()));
                    });
                  },
                  child: Text("== MASUK =="),
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SizeContainer extends StatelessWidget {
  const SizeContainer({Key? key, this.isActive = false, required this.size})
      : super(key: key);

  final bool isActive;
  final String size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 85,
      height: 60,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color:
            isActive ? Color.fromARGB(255, 171, 34, 155) : Colors.transparent,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          width: 1,
          color: Color.fromARGB(255, 174, 56, 176),
        ),
      ),
      child: Text(
        size,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: isActive ? Colors.white : Color.fromARGB(255, 191, 26, 185),
        ),
      ),
    );
  }
}

// halaman 1
class Hal1 extends StatelessWidget {
  const Hal1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 209, 3, 175),
        title: Text('Daftar Baju'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 250, 182, 245)),
                child: Text('Menu')),
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => MainPage()));
              },
            ),
            ListTile(
              title: Text('Daftar Baju'),
              leading: Icon(Icons.list_alt_rounded),
              onTap: () {},
            ),
            ListTile(
              title: Text('Pesan'),
              leading: Icon(Icons.book_online_outlined),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => form_page()));
              },
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "BAJU KAOS CEWE",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 241, 7, 226),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                color: Colors.pink,
                child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          margin: EdgeInsets.all(20),
                          width: 200,
                          height: 300,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/kaos2.jpg")),
                          ),
                          child: Container(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              "Kucing",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(20),
                          width: 200,
                          height: 300,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/kaos3.jpg")),
                          ),
                          child: Container(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              "Anture",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(20),
                          width: 200,
                          height: 300,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/kaos4.jpg")),
                          ),
                          child: Container(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              "Miki",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(20),
                          width: 200,
                          height: 300,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/kaos5.jpg")),
                          ),
                          child: Container(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              "Nion",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(20),
                          width: 200,
                          height: 300,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/kaos6.jpg")),
                          ),
                          child: Container(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              "Cici",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(20),
                          width: 200,
                          height: 300,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/kaos7.jpg")),
                          ),
                          child: Container(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              "Maya",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(20),
                          width: 200,
                          height: 300,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/kaos8.jpg")),
                          ),
                          child: Container(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              "Pita",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "BAJU PESTA CEWE",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 241, 7, 226),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                color: Colors.pink,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        margin: EdgeInsets.all(20),
                        width: 200,
                        height: 300,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/pesta2.jpg")),
                        ),
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "Aurora",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(20),
                        width: 200,
                        height: 300,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/pesta3.jpg")),
                        ),
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "Rapunzel",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(20),
                        width: 200,
                        height: 300,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/pesta4.jpg")),
                        ),
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "Bele",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(20),
                        width: 200,
                        height: 300,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/pesta5.jpg")),
                        ),
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "Putri salju",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "BAJU COWO",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 241, 7, 226),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                color: Color.fromARGB(255, 180, 64, 103),
                child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          margin: EdgeInsets.all(20),
                          width: 200,
                          height: 300,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/cowo2.jpg")),
                          ),
                          child: Container(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              "Zeyn",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(20),
                          width: 200,
                          height: 300,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/cowo3.jpg")),
                          ),
                          child: Container(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              "Nial",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(20),
                          width: 200,
                          height: 300,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/cowo4.jpg")),
                          ),
                          child: Container(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              "Ronaldo",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(20),
                          width: 200,
                          height: 300,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/cowo5.jpg")),
                          ),
                          child: Container(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              "Aliando",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class form_page extends StatefulWidget {
  const form_page({Key? key}) : super(key: key);

  @override
  _form_pageState createState() => _form_pageState();
}

class _form_pageState extends State<form_page> {
  String NamaDepan = '';
  final ctrlNamaDepan = TextEditingController();
  String Alamat = '';
  final ctrAlamat = TextEditingController();
  String Jumlah = '';
  final ctrJumlah = TextEditingController();
  String NoHp = '';
  final ctrNoHP = TextEditingController();
  String Jenis = '';
  final ctrJenis = TextEditingController();
  String Nama = '';
  final ctrNama = TextEditingController();
  bool beli = false;
  Ukuran ukuran = Ukuran.s;

  @override
  void dispose() {
    ctrlNamaDepan.dispose();
    ctrAlamat.dispose();
    ctrJumlah.dispose();
    ctrNoHP.dispose();
    ctrJenis.dispose();
    ctrNama.dispose();
    super.dispose();
  }

  String getUkuran(Ukuran value) {
    if (value == Ukuran.s) {
      return "S";
    } else if (value == Ukuran.m) {
      return 'M';
    } else if (value == Ukuran.l) {
      return 'L';
    } else if (value == Ukuran.xl) {
      return 'XL';
    }

    return 'XXL';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 201, 66, 167),
        title: Text(
          "Rofiqah Julia Nurleila Saing_1915016013  ",
        ),
      ),
      body: Container(
        color: Color.fromARGB(255, 236, 194, 227),
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.values,

          children: [
            Container(
              width: 50,
              height: 750,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(30),
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 233, 212, 236)),
              child: ListView(children: [
                Text(
                  "Proses Pesanan Barang ",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 85, 16, 80),
                  ),
                ),
                SizedBox(height: 18),
                TextFormField(
                  controller: ctrlNamaDepan,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Isi Nama Anda",
                    labelText: "Nama Anda : ",
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                TextFormField(
                  controller: ctrAlamat,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Isi Alamat Anda ",
                    labelText: "Alamat pesanan : ",
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                TextFormField(
                  controller: ctrNoHP,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Isi No hp anda ",
                    labelText: "No Hp : ",
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                TextFormField(
                  controller: ctrJumlah,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Masukkan Jumlah Pesanan ",
                    labelText: "Jumlah Pesanan : ",
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                TextFormField(
                  controller: ctrJenis,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Masukkan Jenis Baju yang dipesan ",
                    labelText: "Jenis Baju: ",
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                TextFormField(
                  controller: ctrNama,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Masukkan Nama Baju yang dipesan ",
                    labelText: "Nama Baju: ",
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Text("Ukuran Baju ",
                    style: TextStyle(
                        color: Color.fromARGB(255, 9, 5, 4), fontSize: 18)),
                ListTile(
                    title: Text("S"),
                    leading: Radio(
                        groupValue: ukuran,
                        value: Ukuran.s,
                        onChanged: (Ukuran? value) {
                          setState(() {
                            ukuran = value!;
                          });
                        })),
                ListTile(
                    title: Text("M"),
                    leading: Radio(
                        groupValue: ukuran,
                        value: Ukuran.m,
                        onChanged: (Ukuran? value) {
                          setState(() {
                            ukuran = value!;
                          });
                        })),
                ListTile(
                    title: Text("L"),
                    leading: Radio(
                        groupValue: ukuran,
                        value: Ukuran.l,
                        onChanged: (Ukuran? value) {
                          setState(() {
                            ukuran = value!;
                          });
                        })),
                ListTile(
                    title: Text("XL"),
                    leading: Radio(
                        groupValue: ukuran,
                        value: Ukuran.xl,
                        onChanged: (Ukuran? value) {
                          setState(() {
                            ukuran = value!;
                          });
                        })),
                ListTile(
                    title: Text("XXL"),
                    leading: Radio(
                        groupValue: ukuran,
                        value: Ukuran.xxl,
                        onChanged: (Ukuran? value) {
                          setState(() {
                            ukuran = value!;
                          });
                        })),
                Text("Jika Anda Sudah Ingin membeli harap diceklis ",
                    style: TextStyle(
                        color: Color.fromARGB(255, 9, 5, 4), fontSize: 18)),
                ListTile(
                  title: Text("Ingin Beli"),
                  leading: Checkbox(
                    value: beli,
                    onChanged: (bool? value) {
                      setState(() {
                        beli = value!;
                      });
                    },
                  ),
                ),
              ]),
            ),
            Container(
              margin: EdgeInsets.only(right: 200, left: 200),
              height: 30,
              child: ElevatedButton(
                style: TextButton.styleFrom(backgroundColor: Colors.pink),
                onPressed: () {
                  setState(() {
                    NamaDepan = ctrlNamaDepan.text;
                    Alamat = ctrAlamat.text;
                    Jumlah = ctrJumlah.text;
                    Jenis = ctrJenis.text;
                    Nama = ctrNama.text;
                    NoHp = ctrNoHP.text;
                  });
                },
                child: Text("Konfirmasi Pesanan"),
              ),
            ),
            Container(
              width: 50,
              height: 200,
              padding: EdgeInsets.all(20),
              margin:
                  EdgeInsets.only(right: 200, left: 200, top: 20, bottom: 30),
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 217, 154, 209)),
              child: ListView(children: [
                Column(
                  children: [
                    Text("====== DATA PESANAN ANDA ====== ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 9, 5, 4), fontSize: 18)),
                    SizedBox(height: 28),
                    Text("Nama    : $NamaDepan "),
                    Text("Alamat : $Alamat"),
                    Text("No Hp : $NoHp"),
                    Text("Jumlah Baju : $Jumlah"),
                    Text("Jenis Baju : $Jenis"),
                    Text("Nama Baju : $Nama"),
                    Text("Ukuran Baju: ${getUkuran(ukuran)}"),
                    Text("Saya ${beli ? "Telah Membeli" : "Tidak Membeli"}"),
                  ],
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
