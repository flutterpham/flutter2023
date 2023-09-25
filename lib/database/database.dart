import 'package:postgres/postgres.dart';

connection() async {
  final conn = PostgreSQLConnection(
    '192.168.1.11',
    5432,
    'qlgt',
    username: 'postgres',
    password: '123456aA@',
  );
  print('start to Postgres database...');
  await conn.open();
  print('Connected to Postgres database...');
  return conn;
}

query(conn) async {
  var results = await conn.query('select * from jhi_user');
  for (var row in results) {
    print('''
    ===
    id: ${row[0]}
    name: ${row[1]}
    email: ${row[2]}
    address: ${row[3]}
    country: ${row[4]}
    ===
    ''');
  }
}
