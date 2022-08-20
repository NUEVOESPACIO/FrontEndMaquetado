import { Component, NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { RouterModule, Routes } from '@angular/router';
import { HttpClientModule } from '@angular/common/http';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { JuegomaleComponent } from './componentes/juegomale/juegomale.component';
import { EncabezadoComponent } from './componentes/encabezado/encabezado.component';
import { ExperienciaYEducacionComponent } from './componentes/experiencia-y-educacion/experiencia-y-educacion.component';
import { AptitudesComponent } from './componentes/aptitudes/aptitudes.component';
import { AcercaDeComponent } from './componentes/acerca-de/acerca-de.component';
import { LogrosComponent } from './componentes/logros/logros.component';


const routes: Routes = [
  {path:'juegomale', component: JuegomaleComponent },  
  {path:'porfolio', component: EncabezadoComponent },
  {path:'', component: AppComponent },   
  
]

@NgModule({
  declarations: [
    AppComponent,   
    JuegomaleComponent,
    EncabezadoComponent,
    ExperienciaYEducacionComponent,
    AptitudesComponent,
    AcercaDeComponent,
    LogrosComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    RouterModule.forRoot(routes)
    
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
