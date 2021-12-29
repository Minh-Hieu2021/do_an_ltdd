class Account {
  final int id;
  final int idsp;
  bool status;
  Account({
    required this.id,
    required this.idsp,
    required this.status,
  });
}

final List<Account> accounts = [
  Account(
    id: 1,
    idsp: 1,
    status: false,
  ),
  Account(
    id: 1,
    idsp: 2,
    status: true,
  ),
  Account(
    id: 1,
    idsp: 3,
    status: true,
  ),
];
