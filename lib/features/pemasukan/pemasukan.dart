class Pemasukan {
  Pemasukan({
    required this.pemasukanID,
    required this.category,
    required this.nominal,
    required this.sumber,
    required this.keterangan,
    required this.tanggal,
  });
  final String pemasukanID;
  final String category;
  final String nominal;
  final String sumber;
  final String keterangan;
  final String tanggal;

  static const itemCount = 6;
}
