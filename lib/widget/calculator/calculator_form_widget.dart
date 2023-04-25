import 'package:flutter/material.dart';

import '../../viewmodel/calculator/form/calculator_form.dart';
import 'form_block_widget.dart';

class CalculatorFormWidget extends StatelessWidget {
  final CalculatorForm form;

  const CalculatorFormWidget({required this.form, super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: form.key,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: TextFormField(
                controller: form.nameController,
                decoration: const InputDecoration(
                  labelText: 'Товар',
                  hintText: 'Введите название',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                ),
              ),
            ),
            ...form.blocks.map(
              (block) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: FormBlockWidget(block: block),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
