import 'package:siak_baitulhikmah/features/pengeluaran/pengeluaran.dart';

List<Pengeluaran> dummyPengeluaran = _json.map((json) {
  if (json
      case {
        'pengeluaranID': final String pengeluaranID,
        'category': final String category,
        'nominal': final String nominal,
        'sumber': final String sumber,
        'keterangan': final String keterangan,
        'tanggal': final String tanggal,
      }) {
    return Pengeluaran(
      pengeluaranID: pengeluaranID,
      category: category,
      nominal: nominal,
      sumber: sumber,
      keterangan: keterangan,
      tanggal: tanggal,
    );
  } else {
    throw const FormatException('Unexpected JSON');
  }
}).toList();

const _json = [
  {
    'pengeluaranID': 'C0001',
    'category': 'Operasional',
    'nominal': '1700000',
    'sumber': 'Rekening A',
    'keterangan': 'Membeli ATK',
    'tanggal': '2023-08-15',
  },
  {
    'pengeluaranID': 'C0002',
    'category': 'Gaji',
    'nominal': '10000000',
    'sumber': 'Rekening B',
    'keterangan': 'Gaji Guru dan TU',
    'tanggal': '2023-08-15',
  },
  {
    'pengeluaranID': 'C0003',
    'category': 'Lomba',
    'nominal': '1500000',
    'sumber': 'Rekening B',
    'keterangan': 'Lomba .. di ..',
    'tanggal': '2023-08-15',
  },
  {
    'pengeluaranID': 'dummy',
    'category': 'dummy',
    'nominal': 'dummy',
    'sumber': 'dummy',
    'keterangan': 'dummy',
    'tanggal': '2023-08-15',
  },
];
