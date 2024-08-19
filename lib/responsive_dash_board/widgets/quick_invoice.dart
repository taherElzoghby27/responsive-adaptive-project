import 'package:flutter/material.dart';
import 'package:responsive_adaptive/responsive_dash_board/utils/spacing.dart';
import 'latest_transaction.dart';
import 'quick_invoice_fields.dart';
import 'quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const QuickInvoiceHeader(),
          verticalSpace(18),
          const LatestTransaction(),
          const Divider(
            height: 40,
            color: Color(0xFFF1F1F1),
            indent: 12,
          ),
          const QuickInvoiceFields(),
        ],
      ),
    );
  }
}
