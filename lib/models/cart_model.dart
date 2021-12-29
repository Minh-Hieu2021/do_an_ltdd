class Cart {
  final int id;
  final int code;
  final int idsp;
  final int idtk;
  int sl;
  bool status;
  Cart({
    required this.id,
    required this.code,
    required this.idsp,
    required this.idtk,
    required this.sl,
    required this.status,
  });
}

final List<Cart> carts = [
  Cart(
    id: 1,
    code: 1,
    idsp: 1,
    idtk: 1,
    sl: 2,
    status: true,
  ),
  Cart(
    id: 2,
    code: 1,
    idsp: 3,
    idtk: 1,
    sl: 1,
    status: false,
  ),
  Cart(
    id: 3,
    code: 1,
    idsp: 4,
    idtk: 1,
    sl: 5,
    status: true,
  ),
  Cart(
    id: 4,
    code: 1,
    idsp: 5,
    idtk: 1,
    sl: 2,
    status: true,
  ),
];
