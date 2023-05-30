import 'package:intl/intl.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:printing/printing.dart';

import '../../profitability/profitability_form.dart';
import '../../util/strings.dart';
import '../file.dart';

class ProfitabilityPdfCreator {
  final Font font;
  final ThemeData textTheme;

  final importantRowDecoration = BoxDecoration(
    border: Border.all(width: 2),
    color: PdfColors.blue200,
  );

  ProfitabilityPdfCreator._(this.font)
      : textTheme = ThemeData(
          defaultTextStyle: TextStyle(font: font),
          tableHeader: TextStyle(font: font, fontWeight: FontWeight.bold),
        );

  static Future<ProfitabilityPdfCreator> init() async {
    var font = await PdfGoogleFonts.pTSansRegular();
    var saver = ProfitabilityPdfCreator._(font);
    return saver;
  }

  static String _createFileName(ProfitabilityForm form) {
    var now = DateFormat('dd.MM.yy HH:mm:ss').format(DateTime.now());
    return '${form.costPrice.productName} $now.pdf';
  }

  /// Creates PDF-file with table of profitability form's data
  Future<File<ProfitabilityForm>> create(ProfitabilityForm form) async {
    final pdf = Document()
      ..addPage(
        Page(
          pageFormat: PdfPageFormat.a4,
          theme: textTheme,
          build: (context) {
            return Table(
              border: TableBorder.all(),
              // TODO: add normal table bounds and borders
              children: [
                TableRow(
                  children: [
                    Text('Параметр'),
                    Text('Значение'),
                  ],
                  decoration: importantRowDecoration,
                ),
                TableRow(
                  children: [
                    Text('Продукция'),
                    Text(form.costPrice.productName),
                  ],
                ),
                TableRow(
                  children: [
                    Text('Себестоимость'),
                    Text(form.expenseProductionFormatted),
                  ],
                ),
                TableRow(
                  children: [
                    Text('Длина'),
                    Text(form.logistics.size.lengthFormatted),
                  ],
                ),
                TableRow(
                  children: [
                    Text('Ширина'),
                    Text(form.logistics.size.widthFormatted),
                  ],
                ),
                TableRow(
                  children: [
                    Text('Высота'),
                    Text(form.logistics.size.heightFormatted),
                  ],
                ),
                TableRow(
                  children: [
                    Text('Объём'),
                    Text('${form.logistics.size.volumeInLiters}л'),
                  ],
                ),
                TableRow(
                  children: [
                    Text('Склад'),
                    Text(form.logistics.selected.name),
                  ],
                ),
                TableRow(
                  children: [
                    Text('Логистика $rubleCurrency'),
                    Text(form.logistics.totalCostFormatted),
                  ],
                ),
                TableRow(
                  children: [
                    Text('Цена продажи'),
                    Text(form.pricing.form.priceBeforeRCDFormatted),
                  ],
                ),
                TableRow(
                  children: [
                    Text('Исходная цена'),
                    Text(form.pricing.form.priceFormatted),
                  ],
                ),
                TableRow(
                  children: [
                    Text('Комиссия %'),
                    Text(form.pricing.commissionFormatted),
                  ],
                ),
                TableRow(
                  children: [
                    Text('Комиссия $rubleCurrency'),
                    Text(form.expensesCommissionFormatted),
                  ],
                ),
                TableRow(
                  children: [
                    Text('Налог %'),
                    Text('${form.selectedTax.taxSize}'),
                  ],
                ),
                TableRow(
                  children: [
                    Text('Налог $rubleCurrency'),
                    Text('${form.taxSize}'),
                  ],
                ),
                TableRow(
                  children: [
                    Text('Доходы'),
                    Text(
                      form.incomeFormatted,
                      style: Theme.of(context).tableHeader,
                    ),
                  ],
                  decoration: importantRowDecoration,
                ),
                TableRow(
                  children: [
                    Text('Расходы (без налога)'),
                    Text(
                      form.expensesFormatted,
                      style: Theme.of(context).tableHeader,
                    ),
                  ],
                  decoration: importantRowDecoration,
                ),
                TableRow(
                  children: [
                    Text('Расходы (с налогом)'),
                    Text(
                      form.expensesWithTaxFormatted,
                      style: Theme.of(context).tableHeader,
                    ),
                  ],
                  decoration: importantRowDecoration,
                ),
                TableRow(
                  children: [
                    Text('Прибыль'),
                    Text(
                      form.profitFormatted,
                      style: Theme.of(context).tableHeader,
                    ),
                  ],
                  decoration: importantRowDecoration,
                ),
                TableRow(
                  children: [
                    Text('Рентабельность'),
                    Text(
                      form.profitabilityFormatted,
                      style: Theme.of(context).tableHeader,
                    ),
                  ],
                  decoration: importantRowDecoration,
                ),
              ],
            );
          },
        ),
      );

    var bytes = await pdf.save();
    var name = _createFileName(form);
    return File(form, name, bytes);
  }
}
