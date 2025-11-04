import "package:flutter/material.dart";

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Accounting App"),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16.0),
        childAspectRatio: 8.0 / 9.0,
        children: <Widget>[
          _buildDashboardItem(context, "Invoice", Icons.receipt, Colors.orange),
          _buildDashboardItem(context, "Billing", Icons.monetization_on, Colors.green),
          _buildDashboardItem(context, "Stock Management", Icons.inventory, Colors.blue),
          _buildDashboardItem(context, "Expense", Icons.trending_down, Colors.red),
          _buildDashboardItem(context, "Accounting", Icons.account_balance, Colors.purple),
        ],
      ),
    );
  }

  Widget _buildDashboardItem(BuildContext context, String title, IconData icon, Color color) {
    return Card(
      elevation: 2.0,
      margin: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          // Handle navigation to the specific feature
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(icon, size: 64.0, color: color),
            const SizedBox(height: 16.0),
            Text(title, style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
      ),
    );
  }
}
