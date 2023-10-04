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

    public void limpiar(StringBuilder mostrar) {
        resultado = 0.0;
        numeroActual = 0.0;
        operadorActual = "";
        mostrar.setLength(0);


        
    }

    public void introducirCalculos(String numero, String operador, StringBuilder mostrar) {
        if (!numero.isEmpty()) {
            numeroActual = Double.parseDouble(numero);
            mostrar.append(numero);
        }
        operadorActual = operador;
        mostrar.append(operador);
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