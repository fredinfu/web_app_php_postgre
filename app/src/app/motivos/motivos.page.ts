import { Component, OnInit, ViewChild } from '@angular/core';
import { MatTableDataSource, MatPaginator, MatSort, MatStep, MatStepper } from '@angular/material';
import { Router } from '@angular/router';
import { AlertController } from '@ionic/angular';

@Component({
  selector: 'app-motivos',
  templateUrl: './motivos.page.html',
  styleUrls: ['./motivos.page.scss'],
})
export class MotivosPage implements OnInit {

  displayedColumns: string[] = ['edit', 'motivo', 'des_motivo', 'estado', 'tipo', 'remove'];

  user: any;
  ionite: any;
  dummyData: any[] = [
    {
      motivo: 0,
      des_motivo: 'ASDF',
      estado: 'F',
      tipo: 'T'
    },
    {
      motivo: 1,
      des_motivo: 'CSDF',
      estado: 'V',
      tipo: 'T'
    },
    {
      motivo: 2,
      des_motivo: 'GSDF',
      estado: 'F',
      tipo: 'K'
    }
  ];

  dataSource = new MatTableDataSource<any>();

  @ViewChild(MatPaginator) paginator: MatPaginator;
  @ViewChild(MatSort) sort: MatSort;

  constructor(
    private router: Router,
    private alertCtrl: AlertController
  ) {
    
    this.getMotivos();
  }

  ngOnInit() {
    this.getMotivos();
  }

  getMotivos() {
    this.dataSource.data = this.dummyData;
    this.dataSource.paginator = this.paginator;
    this.dataSource.sort = this.sort;
  }

  editMotivo(motivo){
    localStorage.motivoActual = JSON.stringify(motivo);
    this.router.navigate(['/motivo-update']);
  }

  async removeMotivo(motivo){
    this.confirmRemove();
  }

  async confirmRemove(){
    let alert = await this.alertCtrl.create({
      message: '¿Estás seguro en eliminar el motivo?',
      buttons: [
          {
              text: 'Cancelar',
              handler: () => {
                  console.log('Cancel clicked');
              }
          },
          {
              text: 'Aceptar',
              handler: () => {

              }
          }
      ]
    });

    await alert.present();
  }

  addMotivo(){
    this.router.navigate(['/motivo-add']);
  }

}
