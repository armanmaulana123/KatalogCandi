import 'package:flutter/material.dart';
import 'package:candi/DataCandiModel.dart';
import 'package:candi/DetailCandi.dart';

class PageAwal extends StatefulWidget {
  const PageAwal({Key? key}) : super(key: key);

  @override
  State<PageAwal> createState() => _PageAwalState();
}

class _PageAwalState extends State<PageAwal> {
  int idCandi = 0;

  static List<String> namaCandi = [
    'Candi Borobudur',
    'Candi Brahu',
    'Candi Dieng',
    'Candi Mendut',
    'Candi Muara Takus',
    'Candi Penataran',
    'Candi Prambanan',
  ];

  static List gambar = [
    'assets/img/borobudur.jpg',
    'assets/img/brahu.jpg',
    'assets/img/dieng.jpg',
    'assets/img/mendut.jpg',
    'assets/img/muaratakus.jpg',
    'assets/img/penataran.jpg',
    'assets/img/prambanan.jpg',
  ];

  static List<String> deskripsi = [
    'Sebagai Candi Buddha terbesar di dunia sekaligus monumen Buddha terbesar di dunia, Candi Borobudur memiliki bentuk struktur seperti punden berundak yang semakin ke atas semakin mengecil dengan empat buah tangga yang terdapat pada setiap arah mata angin. Candi Borobudur memiliki panjang 121,66 meter dengan lebar 121,38 meter dan tinggi 35,40 meter. Menurut filsafat Buddha, struktur tingkatan Candi Borobudur merupakan tiruan alam semesta akan roda kehidupan.',
    'Candi Brahu terletak di Dukuh Jambu Mete, Desa Bejijong, Kecamatan Trowulan, Kabupaten Mojokerto. Candi Brahu merupakan cadi kerajaan Budha yang memiliki stupa sebagai ciri khas dari candi agama Budha. Dulunya candi ini hanya digunakan sebagai tempat untuk sembahyang, candi ini didirikan oleh Empu Sendok, dimana Empu Sendok merupakan seorang raja dari sejarah Kerajaan Mataram kuno dan diperkirakan candi Brahu merupakan salah satu peninggalan kerajaan Mataram Kuno. Hal ini disimpulkan dari sebuah prasasti yang ditemukan 45 meter di sebelah barat dari candi Brahu.',
    'Candi Dieng merupakan kumpulan candi yang terletak di kaki pegunungan Dieng, Wonosobo, Jawa tengah. Kawasan Candi Dieng menempati dataran pada ketinggian 2000 m di atas permukaan laut, memanjang arah utara-selatan sekitar 1900 m dengan lebar sepanjang 800 m. Kumpulan candi Hindu beraliran Syiwa yang diperkirakan dibangun antara akhir abad ke-8 sampai awal abad ke-9 ini diduga merupakan candi tertua di Jawa. Sampai saat ini belum ditemukan informasi tertulis tentang sejarah Candi Dieng, namun para ahli memperkirakan bahwa kumpulan candi ini dibangun atas perintah raja-raja dari Wangsa Sanjaya. Di kawasan Dieng ini ditemukan sebuah prasasti berangka tahun 808 M, yang merupakan prasasti tertua bertuliskan huruf Jawa kuno, yang masih masih ada hingga saat ini Luas keseluruhan kompleks Candi Dieng mencapai sekitar 1.8 x 0.8 km2. Candi-candi di kawasan Candi Dieng terbagi dalam 3 kelompok dan 1 candi yang berdiri sendiri yang dinamakan berdasarkan nama tokoh dalam cerita wayang yang diadopsi dari Kitab Mahabarata.',
    'Candi ini letaknya berada di Magelang Jawa Tengah. Letaknya hanya beberapa kilometer saja dari Candi Borobudur. Candi ini dibangun pada tahun 1880 saat masa pimpinan Raja Indra. 	Relief. Terdapat beberapa relief yang ada di Candi Mendut. Pertama adalah relief dengan gambar kura-kura dan angsa. Relief kedua adalah kisah dari Dustabuddhi dan Dharmabuddhi.',
    'Candi Muara Takus terletak di desa Muara Takus, Kecamatan Tigabelas Koto Kampar, Kabupaten Kampar, Propinsi Riau. Jaraknya dari Pekanbaru, Ibukota Propinsi Riau, sekitar 128 Km. Perjalanan menuju Desa Muara Takus hanya dapat dilakukan melalui jalan darat yaitu dari Pekanbaru ke arah Bukittinggi sampai di Muara Mahat. Dari Muara Mahat melalui jalan kecil menuju ke Desa Muara Takus. Kompleks Candi Muara Takus, satu-satunya peninggalan sejarah yang berbentuk candi di Riau. Ada dua pendapat mengenai nama Muara Takus. Yang pertama mengatakan bahwa nam tersebut diambil dari nama sebuah anak sungai kecil bernama Takus yang bermuara ke Sungai Kampar Kanan. Pendapat lain mengatakan bahwa Muara Takus terdiri dari dua kata, yaitu “Muara” dan “Takus”. Kata “Muara” mempunyai pengertian yang sudah jelas, yaitu suatu tempat sebuah sungai mengakhiri alirannya ke laut atau ke sungai yang lebih besar, sedangkan kata “Takus” berasal dari bahasa Cina, Ta berarti besarr, Ku berarti tua, dan Se berarti candi atau kuil. Jadi arti keseluruhan kata Muara Takus adalah candi tua yang besar, yang terletak di muara sungai.',
    'Candi Penataran atau Candi Palah merupakan kompleks candi Hindu Siwa yang terletak di Desa Penataran, Kecamatan Nglegok, Kabupaten Blitar, Jawa Timur. Salah satu kompleks candi Hindu termegah dan terluas di Jawa Timur ini terletak di lereng barat daya Gunung Kelud. Candi Penataran dibangun pada masa Kerajaan Kediri, tepatnya periode pemerintahan Raja Srengga (1190-1200) pada sekitar abad ke-12. Relief yang ada di Candi Penataran ini bisa lo lihat ukirannya yang ada di dinding teras Pendopo.',
    'Candi Prambanan merupakan candi Hindu terbesar di Indonesia, letaknya ada di lingkungan Taman Wisata Prambanan, Desa Prambanan Kecamatan Bokoharjo. Mengenai sejarah dan asal muasal berdirinya candi ini hingga saat ini masih belum diketahui secara jelas kapan dan siapa yang membangunnya, namun terdapat dugaan kuat bahwa Candi Prambanan ini dibangun sekitar pertengahan abad ke-9 oleh Raja Balitung Maha Sambu yang merupakan raja dari Wangsa Sanjaya. Candi Prambanan terhitung mengalami pemugaran dalam waktu yang sangat Panjang sejak tahun 1733 hingga saat ini masih dilaksanakan pemugaran secara bertahap. Denah asli dari Candi Prambanan yaitu berbentuk persegi Panjang dan terdiri atas halaman luar serta tiga pelataran, Halaman luar merupakan areal terbuka yang mengelilingi pelataran, kemudian tiga pelataran tersebut adalah Jaba (pelataran luar), Tengahan (pelataran tengah), dan Njeron (pelataran dalam)'
  ];

  final List<DataCandiModel> DataCandi = List.generate(
      namaCandi.length,
      (index) => DataCandiModel(
          '${namaCandi[index]}', '${gambar[index]}', '${deskripsi[index]}'));

  @override
  void initState() {
    super.initState();
    idCandi = 0;
  }

  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return Scaffold(
      appBar: AppBar(
        title: Text("Katalog Candi"),
      ),
      body: (isLandscape)
          ? Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: width * 0.5,
                  child: ListView.builder(
                      itemCount: DataCandi.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: ListTile(
                            title: Text(DataCandi[index].nama),
                            leading: CircleAvatar(
                                backgroundImage:
                                    NetworkImage(DataCandi[index].gambar)),
                            onTap: () => setState(() => idCandi = index),
                          ),
                        );
                      }),
                ),
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: height * 0.4,
                        width: width * 0.5,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(gambar[idCandi]),
                                fit: BoxFit.cover)),
                      ),
                      Text(
                        namaCandi[idCandi],
                        style: TextStyle(fontSize: 20),
                      ),
                      Container(
                        width: width * 0.5,
                        child: Text(
                          deskripsi[idCandi],
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      // Container(
                      //   width: width * 0.5,
                      //   child: Text(
                      //     deskripsi[idCandi],
                      //     textAlign: TextAlign.justify,
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ],
            )
          : ListView.builder(
              itemCount: DataCandi.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(DataCandi[index].nama),
                    leading: CircleAvatar(
                        backgroundImage: NetworkImage(DataCandi[index].gambar)),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) =>
                              CandiDetail(dataCandiModel: DataCandi[index]))));
                    },
                  ),
                );
              }),
    );
  }
}
