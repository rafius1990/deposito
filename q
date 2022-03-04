[33mcommit f9dac63d022067cfe8a0f009cb04237679d1b749[m[33m ([m[1;36mHEAD -> [m[1;32mmaster[m[33m)[m
Author: debian <debian@debian>
Date:   Sun Feb 27 21:43:06 2022 +0100

    nuevas clases añadidas

[1mdiff --git a/.classpath b/.classpath[m
[1mnew file mode 100755[m
[1mindex 0000000..3f3893a[m
[1m--- /dev/null[m
[1m+++ b/.classpath[m
[36m@@ -0,0 +1,6 @@[m
[32m+[m[32m<?xml version="1.0" encoding="UTF-8"?>[m
[32m+[m[32m<classpath>[m
[32m+[m	[32m<classpathentry kind="con" path="org.eclipse.jdt.launching.JRE_CONTAINER"/>[m
[32m+[m	[32m<classpathentry kind="src" path=""/>[m
[32m+[m	[32m<classpathentry kind="output" path=""/>[m
[32m+[m[32m</classpath>[m
[1mdiff --git a/.gitignore b/.gitignore[m
[1mnew file mode 100755[m
[1mindex 0000000..a66c73a[m
[1m--- /dev/null[m
[1m+++ b/.gitignore[m
[36m@@ -0,0 +1 @@[m
[32m+[m[32m/Main.class[m
[1mdiff --git a/.project b/.project[m
[1mnew file mode 100755[m
[1mindex 0000000..3c0c179[m
[1m--- /dev/null[m
[1m+++ b/.project[m
[36m@@ -0,0 +1,17 @@[m
[32m+[m[32m<?xml version="1.0" encoding="UTF-8"?>[m
[32m+[m[32m<projectDescription>[m
[32m+[m	[32m<name>deposito2</name>[m
[32m+[m	[32m<comment></comment>[m
[32m+[m	[32m<projects>[m
[32m+[m	[32m</projects>[m
[32m+[m	[32m<buildSpec>[m
[32m+[m		[32m<buildCommand>[m
[32m+[m			[32m<name>org.eclipse.jdt.core.javabuilder</name>[m
[32m+[m			[32m<arguments>[m
[32m+[m			[32m</arguments>[m
[32m+[m		[32m</buildCommand>[m
[32m+[m	[32m</buildSpec>[m
[32m+[m	[32m<natures>[m
[32m+[m		[32m<nature>org.eclipse.jdt.core.javanature</nature>[m
[32m+[m	[32m</natures>[m
[32m+[m[32m</projectDescription>[m
[1mdiff --git a/Main.java b/Main.java[m
[1mnew file mode 100755[m
[1mindex 0000000..aac3a86[m
[1m--- /dev/null[m
[1m+++ b/Main.java[m
[36m@@ -0,0 +1,25 @@[m
[32m+[m[32mimport cuentas.CCuenta;[m[41m[m
[32m+[m[41m[m
[32m+[m[32mpublic class Main {[m[41m[m
[32m+[m[41m[m
[32m+[m[32m    public static void main(String[] args) {[m[41m[m
[32m+[m[32m        CCuenta cuenta1;[m[41m[m
[32m+[m[32m        double saldoActual;[m[41m[m
[32m+[m[41m[m
[32m+[m[32m        cuenta1 = new CCuenta("Antonio López","1000-2365-85-1230456789",2500,0);[m[41m[m
[32m+[m[32m        saldoActual = cuenta1.estado();[m[41m[m
[32m+[m[32m        System.out.println("El saldo actual es"+ saldoActual );[m[41m[m
[32m+[m[41m[m
[32m+[m[32m        try {[m[41m[m
[32m+[m[32m            cuenta1.retirar(2300);[m[41m[m
[32m+[m[32m        } catch (Exception e) {[m[41m[m
[32m+[m[32m            System.out.print("Fallo al retirar");[m[41m[m
[32m+[m[32m        }[m[41m[m
[32m+[m[32m        try {[m[41m[m
[32m+[m[32m            System.out.println("Ingreso en cuenta");[m[41m[m
[32m+[m[32m            cuenta1.ingresar(695);[m[41m[m
[32m+[m[32m        } catch (Exception e) {[m[41m[m
[32m+[m[32m            System.out.print("Fallo al ingresar");[m[41m[m
[32m+[m[32m        }[m[41m[m
[32m+[m[32m    }[m[41m[m
[32m+[m[32m}[m[41m[m
[1mdiff --git a/cuentas/.gitignore b/cuentas/.gitignore[m
[1mnew file mode 100755[m
[1mindex 0000000..08c05b5[m
[1m--- /dev/null[m
[1m+++ b/cuentas/.gitignore[m
[36m@@ -0,0 +1 @@[m
[32m+[m[32m/CCuenta.class[m
[1mdiff --git a/cuentas/CCuenta.java b/cuentas/CCuenta.java[m
[1mnew file mode 100755[m
[1mindex 0000000..22d6a42[m
[1m--- /dev/null[m
[1m+++ b/cuentas/CCuenta.java[m
[36m@@ -0,0 +1,73 @@[m
[32m+[m[32mpackage cuentas;[m
[32m+[m[32mpublic class CCuenta {[m
[32m+[m	[32m private String casa2;[m
[32m+[m	[32m private String casa;[m
[32m+[m[32m    private String nombre;[m
[32m+[m[32m    private String cuenta;[m
[32m+[m[32m    private double saldo;[m
[32m+[m[32m    private double tipoInterés;[m
[32m+[m
[32m+[m[32m    private double getTipoInterés() {[m
[32m+[m		[32mreturn tipoInterés;[m
[32m+[m	[32m}[m
[32m+[m
[32m+[m	[32mprivate void setTipoInterés(double tipoInterés) {[m
[32m+[m		[32mthis.tipoInterés = tipoInterés;[m
[32m+[m	[32m}[m
[32m+[m
[32m+[m	[32mprivate double getSaldo() {[m
[32m+[m		[32mreturn saldo;[m
[32m+[m	[32m}[m
[32m+[m
[32m+[m	[32mprivate void setSaldo(double saldo) {[m
[32m+[m		[32mthis.saldo = saldo;[m
[32m+[m	[32m}[m
[32m+[m
[32m+[m	[32mprivate String getCuenta() {[m
[32m+[m		[32mreturn cuenta;[m
[32m+[m	[32m}[m
[32m+[m
[32m+[m	[32mprivate void setCuenta(String cuenta) {[m
[32m+[m		[32mthis.cuenta = cuenta;[m
[32m+[m	[32m}[m
[32m+[m
[32m+[m	[32mprivate String getNombre() {[m
[32m+[m		[32mreturn nombre;[m
[32m+[m	[32m}[m
[32m+[m
[32m+[m	[32mprivate void setNombre(String nombre) {[m
[32m+[m		[32mthis.nombre = nombre;[m
[32m+[m	[32m}[m
[32m+[m
[32m+[m	[32mpublic CCuenta()[m
[32m+[m[32m    {[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    public CCuenta(String nom, String cue, double sal, double tipo)[m
[32m+[m[32m    {[m
[32m+[m[32m        setNombre(nom);[m
[32m+[m[32m        setCuenta(cue);[m
[32m+[m[32m        setSaldo(sal);[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    public double estado()[m
[32m+[m[32m    {[m
[32m+[m[32m        return getSaldo();[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    public void ingresar(double cantidad) throws Exception[m
[32m+[m[32m    {[m
[32m+[m[32m        if (cantidad<0)[m
[32m+[m[32m            throw new Exception("No se puede ingresar una cantidad negativa");[m
[32m+[m[32m        setSaldo(getSaldo() + cantidad);[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    public void retirar(double cantidad) throws Exception[m
[32m+[m[32m    {[m
[32m+[m[32m        if (cantidad <= 0)[m
[32m+[m[32m            throw new Exception ("No se puede retirar una cantidad negativa");[m
[32m+[m[32m        if (estado()< cantidad)[m
[32m+[m[32m            throw new Exception ("No se hay suficiente saldo");[m
[32m+[m[32m        setSaldo(getSaldo() - cantidad);[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
