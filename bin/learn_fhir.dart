import 'package:fhir_at_rest/fhir_at_rest.dart';
import 'package:fhir/r4.dart';

void main(List<String> arguments) async {
  final req = ReadRequest.r4(
    base: Uri.parse('https://hapi.fhir.org/baseR4'),
    type: R4Types.patient,
    id: Id('1174683'),
  );
  final makeReq = await req.request();
  print(makeReq);
}
