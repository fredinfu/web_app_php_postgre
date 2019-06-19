import { Component, OnInit, ViewChild } from '@angular/core';
import { MatTableDataSource, MatPaginator, MatSort, MatStep, MatStepper } from '@angular/material';
import { Router } from '@angular/router';
import { AlertController } from '@ionic/angular';
import { ApiService } from '../api.service';

@Component({
  selector: 'app-motivos',
  templateUrl: './motivos.page.html',
  styleUrls: ['./motivos.page.scss'],
})
export class MotivosPage implements OnInit {

  displayedColumns: string[] = ['edit', 'motivo', 'des_motivo', 'estado', 'tipo', 'remove'];

  user: any;
  ionite: any;
  motivosFiltered: any[] = [];
  dummyData: any[] = [];

  dataSource = new MatTableDataSource<any>();

  @ViewChild(MatPaginator) paginator: MatPaginator;
  @ViewChild(MatSort) sort: MatSort;

  constructor(
    private router: Router,
    private alertCtrl: AlertController,
    private api: ApiService
  ) {

    this.getMotivos();
  }

  ngOnInit() {
    this.getMotivos();
  }

  getMotivos() {
    this.api.get('get_motivos', { }).subscribe(s => {
      const response = s as any;
      if(response.success) {
        this.dummyData = response.results;
        this.motivosFiltered = response.results;
        this.dataSource.data = this.motivosFiltered;
        this.dataSource.paginator = this.paginator;
        this.dataSource.sort = this.sort;

      }
    });

  }

  editMotivo(motivo){
    localStorage.motivoActual = JSON.stringify(motivo);
    this.router.navigate(['/motivo-update']);
  }

  async removeMotivo(motivo) {
    this.confirmRemove();
  }

  async confirmRemove() {
    const alert = await this.alertCtrl.create({
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

  filterMotivos(des_motivo){
    this.motivosFiltered = this.dummyData.filter( (f) => f.des_motivo.toLowerCase().indexOf(des_motivo.toLowerCase()) >= 0 );
    this.dataSource.data = this.motivosFiltered;
  }

  orderByDesmotivoAsc() {
    this.motivosFiltered = this.motivosFiltered.sort((a, b) => (a.des_motivo < b.des_motivo ? -1 : 1));
    this.dataSource.data = this.motivosFiltered;
  }

  orderByDesmotivoDesc() {
    this.motivosFiltered = this.motivosFiltered.sort((a, b) => (a.des_motivo > b.des_motivo ? -1 : 1));
    this.dataSource.data = this.motivosFiltered;
  }

}
