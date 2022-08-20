import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class AzarService {

  constructor() { }

  generarDatos(): string[] {
    var listadop: string[] = ["ANTEOJOS","ARBOL","AUTO","AVION","BARCO","CAMA","CAMPERA","CARNE", "CASA","CELULAR","COLITA","CORAZON","CUADERNO","ESCALERA","ESCOBA","ESTRELLA","FIDEOS","FLOR","GOMA","JUGO","LAMPARA","LAPIZ","LIBRO","LUNA","MAR","MARIPOSA","MATE","MEDIALUNAS","MEDIAS","MESA","MOCHILA","MOTO","PAJARO","PANTALON","PATO","PEINE","PELOTA","PERRO","PILETA","PIZZA","PLATO","PUERTA","RIO","SALAME","SILLA","SILLON","SOL","TELEVISOR","VASO","VENTANA"];
    var palabra=listadop[Math.floor(Math.random()*listadop.length)];    
    var imagenlink ="../../assets/img/" + palabra + ".jpg";
    var cadenaocu = "-".repeat(palabra.length);
    
    let datos: string[]= [palabra,imagenlink,cadenaocu];
    return datos;
  }

}
