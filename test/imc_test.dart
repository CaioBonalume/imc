import 'package:imc/imc.dart' as app;
import 'package:test/test.dart';

void main() {
  test('teste de resposta com todos os dados', () {
    expect(
        app.data('Caio', 72, 1.85, 21.04),
        equals(
            '{Nome: Caio, Peso: 72.0, Altura: 1.85, IMC: 21.04 kg/m², Tipo: Saudável}'));
  });
}
