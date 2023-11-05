import 'package:flutter/material.dart';
import 'package:glovo_clone/core/navigation.dart';
import 'package:glovo_clone/features/auth/presentation/widgets/glovo_button_widget.dart';

class CtaWidget extends StatelessWidget {
  const CtaWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            '¡Hola!',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Selecciona una de estas opciones',
            style: TextStyle(
              fontSize: 15.0,
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(height: 40.0),
          GlovoButton(
            onPressed: () => navigateToHome(context),
            text: 'Google',
            type: GlovoButtonType.google,
          ),
          const SizedBox(
            height: 15,
          ),
          GlovoButton(
            onPressed: () => navigateToHome(context),
            text: 'Facebook',
            type: GlovoButtonType.facebook,
          ),
          const SizedBox(
            height: 15,
          ),
          GlovoButton(
            onPressed: () => navigateToHome(context),
            text: 'E-mail',
            type: GlovoButtonType.email,
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 350.0,
            child: Text(
              'Al continuar, acepta automáticamente nuestras Condiciones, Política de privacidad y Política de cookies.',
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.grey[600],
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
