package model;

public class Calculadora {
    private double resultado;
    private double numeroActual;
    private String operadorActual;

    public Calculadora() {
        resultado = 0.0;
        numeroActual = 0.0;
        operadorActual = "";
    }

    public double getResultado() {
        return resultado;
    }

    public void sumar(double numero) {
        resultado += numero;
    }

    public void restar(double numero) {
        resultado -= numero;
    }

    public void limpiar() {
        resultado = 0.0;
        numeroActual = 0.0;
        operadorActual = "";
    }

    public void introducirCalculos(String numero, String operador) {
        if (!numero.isEmpty()) {
            numeroActual = Double.parseDouble(numero);
        }
        operadorActual = operador;
    }

    public double resolver() {
        switch (operadorActual) {
            case "+":
                sumar(numeroActual);
                break;
            case "-":
                restar(numeroActual);
                break;
            default:
                System.out.println("Operador no válido");
                break;
        }
        return resultado;
    }
}