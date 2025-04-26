void main() {
  List<Map<String, dynamic>> orders = [
    {'id': 1, 'status': 'ready', 'item': 'burger'},
    {'id': 2, 'status': 'canceled', 'item': 'pizza'},
    {'id': 3, 'status': 'ready', 'item': 'fries'},
    {'id': 4, 'status': 'ready', 'item': 'nuggets'},
    {'id': 5, 'status': 'vip', 'item': 'sushi'},
    {'id': 6, 'status': 'ready', 'item': 'salad'},
  ];

  for (var order in orders) {
    if (order['status'] == 'canceled') {
      continue; // تخطي الطلبات الملغاة
    }

    if (order['status'] == 'vip') {
      print("🔴 طلب VIP تم العثور عليه! يجب معالجته فورًا.");
      break; // إنهاء الحلقة لمعالجة الطلب VIP أولًا
    }

    print("\n🔹 معالجة الطلب #${order['id']}");

    switch (order['item']) {
      case 'burger':
      case 'pizza':
      case 'fries':
      case 'nuggets':
        print("✅ يرجى تحضير ${order['item']}.");
        break;
      default:
        print("⚠️ العنصر ${order['item']} غير معروف.");
    }

    if (order['id'] == 4) {
      print("🚨 الطلب رقم 4 يستغرق وقتًا طويلًا! يجب تنبيه المطبخ.");
    }

    print("-------------------------");
  }
}