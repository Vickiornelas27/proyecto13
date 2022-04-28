class Estudiante {
  late String matricula;
  late String nombreCompleto;
  late String carrera;
  late String semestre;
  late String telefono;
  late String correo;

  Estudiante(
      this.nombreCompleto, matricula, carrera, semestre, telefono, correo) {
    this.matricula = matricula;
    this.carrera = carrera;
    this.semestre = semestre;
    this.telefono = telefono;
    this.correo = correo;
  }
}
