import 'package:flutter/material.dart';

class GetValBtn extends StatelessWidget {
  const GetValBtn({
    super.key,
    required this.btnText,
    required this.res,
  });

  final String btnText;
  final int res;

  showResultDialog(BuildContext context, var result) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          child: SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            height: 150,
            child: Center(
                child: Text(
              "$result",
              style: const TextStyle(fontWeight: FontWeight.bold),
            )),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showResultDialog(context, res);
      },
      child: Text(
        btnText,
      ),
    );
  }
}
