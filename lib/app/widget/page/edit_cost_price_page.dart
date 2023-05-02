import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import 'cost_price/bottom_total_bar.dart';
import 'cost_price/cost_price_form_widget.dart';
import '../side_bar.dart';
import '../../viewmodel/cost_price/form/cost_price_form.dart';

@RoutePage()
class EditCostPricePage extends StatelessWidget {
  final CostPriceForm form;

  const EditCostPricePage({required this.form, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Калькулятор себестоимости',
          style: TextStyle(fontSize: 18),
        ),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                onTap: form.reset,
                height: 30,
                child: const ListTile(
                  title: Text('Очистить форму'),
                  leading: Icon(Icons.clear),
                ),
              ),
            ],
          )
        ],
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      drawer: SideBar(),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 28,
                  ),
                  child: CostPriceFormWidget(form: form),
                ),
              ),
            ),
            BottomTotalBar(form: form),
          ],
        ),
      ),
    );
  }
}
