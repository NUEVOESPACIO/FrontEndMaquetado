import { Component, OnInit } from '@angular/core';
import { AzarService } from 'src/app/servicios/azar.service';

@Component({
  selector: 'app-juegomale',
  templateUrl: './juegomale.component.html',
  styleUrls: ['./juegomale.component.css']
})

export class JuegomaleComponent implements OnInit {

  linkimagen: string="";
  palabra: string="";
  guiones: string ="";
  varglobal:number= 0;
  
  

  constructor(private data:AzarService) {};

  ngOnInit(): void {
    this.devoler();
    
    

  }

  devoler() {
    let vari=this.data.generarDatos();
    this.linkimagen=vari[1];
    this.palabra=vari[0];
    this.guiones=vari[2];
    this.varglobal=0;

  }

  onKeydown(event: any) {
    var tecla: String=event.key.toLowerCase();
    var compar: String=this.palabra.charAt(this.varglobal).toLowerCase();
    if (tecla===compar) {

      var ppart:string =this.palabra.substring(0,this.varglobal+1);
      var spart:string="-".repeat(this.palabra.length-this.varglobal-1);      
      this.guiones=ppart+spart;
      this.varglobal++;

    } else {}

    if (this.varglobal>this.palabra.length-1) {  
      
        const audio = new Audio('../../assets/sounds/sfx-piano-bar2.mp3');        
        audio.play();   

      setTimeout(() =>{this.devoler()},3000);
       }


}
 }
