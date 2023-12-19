// Tugas Ats
// Roni Romdhoni
// XI Axioo Class Program
import 'package:buah/data.dart';
import 'package:buah/detailpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  List<buah> daftarbuah = [];
  ScrollController scrollController = ScrollController();

  void inistate() {
    objectBuah();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Buah Buahan')),
        ),
        body: ListView.builder(
          controller: scrollController,
          itemCount: objectBuah().length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return detailPage(buahnya: objectBuah()[index]);
                }));
              },
              child: Card(
                elevation: 5,
                child: Container(
                  padding: EdgeInsets.all(3),
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(
                            height: 200,
                            width: 300,
                            fit: BoxFit.cover,
                            image: NetworkImage(daftarbuah[index].getImg),
                          ),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(70, 0, 0, 0),
                          child: Flexible(
                            child: Column(
                              children: [
                                Center(
                                  child: Text(
                                    daftarbuah[index].getNama.toString(),
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  daftarbuah[index].getJenis.toString(),
                                  style: TextStyle(fontSize: 20),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  daftarbuah[index].getSpesies.toString(),
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  // Project By Roni Romdhoni

  List<buah> objectBuah() {
    buah buah0 = buah(
        jenis: 'Persea',
        spesies: 'Persia Americana',
        nama: 'Alpukat',
        img:
            'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//97/MTA-2754493/rezeki-fresh-market_rezeki-fresh-market-alpukat-mentega-super-buah-buahan--0-9-1-1-kg--2-4-pcs-_full02.jpg');
    daftarbuah.add(buah0);
    buah buah1 = buah(
        jenis: 'Durio',
        spesies: 'Durio zibethinus',
        nama: 'Durian',
        img:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Durio_kutej_F_070203_ime.jpg/300px-Durio_kutej_F_070203_ime.jpg');
    daftarbuah.add(buah1);
    buah buah2 = buah(
        jenis: 'Malus',
        spesies: 'Malus domestica',
        nama: 'Appel',
        img:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Apple_3.jpg/220px-Apple_3.jpg');
    daftarbuah.add(buah2);
    buah buah3 = buah(
        jenis: 'Citrus',
        spesies: '	C. Sinensis',
        nama: 'Jeruk',
        img:
            'https://awsimages.detik.net.id/customthumb/2010/12/13/900/bsjerukctt.jpg?w=600&q=90');
    daftarbuah.add(buah3);
    buah buah4 = buah(
        jenis: 'Cucumis',
        spesies: 'C. melo',
        nama: 'Melon',
        img:
            'https://images.tokopedia.net/img/cache/500-square/product-1/2019/2/17/49279413/49279413_e3bc09d3-f5b5-45b5-af86-7b3f15b4d16b_1920_1706.jpg');
    daftarbuah.add(buah4);
    buah buah5 = buah(
        jenis: '	Citrullus',
        spesies: '	Citrullus lanatus',
        nama: 'Semangka',
        img:
            'https://images.tokopedia.net/img/cache/500-square/VqbcmM/2021/8/16/29d8c525-6fce-45d1-bcc7-8ec281360b40.jpg');
    daftarbuah.add(buah5);
    buah buah6 = buah(
        jenis: 'Mangifera',
        spesies: 'M. indica',
        nama: 'Mangga',
        img:
            'https://2.bp.blogspot.com/-tFg-WDu4ta8/VpH6F6E0u-I/AAAAAAAABsk/yJL42Rvp444/s1600/manfaat%2Bbuah%2Bmangga.JPG');
    daftarbuah.add(buah6);
    buah buah7 = buah(
        jenis: 'Nephelium',
        spesies: 'Nephelium lappaceum',
        nama: 'Rambutan',
        img:
            'https://awsimages.detik.net.id/community/media/visual/2023/01/25/rambutan-blitar-2.jpeg?w=1200');
    daftarbuah.add(buah7);
    buah buah8 = buah(
        jenis: 'Garcinia',
        spesies: 'Garcinia mangostana',
        nama: 'Manggis',
        img:
            'https://images.tokopedia.net/img/cache/700/VqbcmM/2021/7/31/c23ae445-cfd3-48ba-a24f-1b1362898ece.jpg');
    daftarbuah.add(buah8);
    buah buah9 = buah(
        jenis: 'Fragaria',
        spesies: 'F. × ananassa',
        nama: 'stroberi',
        img:
            'https://images.tokopedia.net/img/cache/500-square/VqbcmM/2021/7/26/6fbda34d-fc4f-4e0c-942d-a63658d2a173.jpg');
    daftarbuah.add(buah9);
    buah buah10 = buah(
        jenis: 'Musa',
        spesies: 'karnivora',
        nama: 'Pisang',
        img:
            'https://image.slidesharecdn.com/slidegambarbuah-buahan-111129024157-phpapp02/85/gambar-buahbuahan-12-320.jpg?cb=1666223474');
    daftarbuah.add(buah10);
    buah buah15 = buah(
        jenis: 'Psidium',
        spesies: 'Psidium guajava',
        nama: 'Jambu Biji',
        img:
            'https://asset.kompas.com/crop/2x3:998x667/750x500/data/photo/2017/10/09/16098203.jpg');
    daftarbuah.add(buah15);
    buah buah11 = buah(
        jenis: 'Ananas',
        spesies: 'Ananas comosus',
        nama: 'Nanas',
        img:
            'https://images.tokopedia.net/img/cache/500-square/VqbcmM/2020/12/20/1c73738d-feb2-4f68-b866-a38b1923c494.png');
    daftarbuah.add(buah11);
    buah buah12 = buah(
        jenis: 'Carica',
        spesies: 'C. Papaya',
        nama: 'Pepaya',
        img:
            'https://i0.wp.com/resepkoki.id/wp-content/uploads/2017/04/Papaya.png?fit=1500%2C1500&ssl=1');
    daftarbuah.add(buah12);
    buah buah13 = buah(
        jenis: 'Averrhoa',
        spesies: 'A. carambola',
        nama: 'Belimbing',
        img:
            'https://www.homage.com.my/wp-content/uploads/sites/2/2022/11/11-844x633.jpg');
    daftarbuah.add(buah13);
    buah buah14 = buah(
        jenis: 'Vitis',
        spesies: 'Vitis acerifolia',
        nama: 'Anggur',
        img:
            'https://tribratanews.polri.go.id/web/image/blog.post/57032/image');
    daftarbuah.add(buah14);
    return daftarbuah;
  }
}
