import { Component, OnInit, ViewChild } from '@angular/core';
import { MatTableDataSource, MatPaginator, MatSort, MatStep, MatStepper } from '@angular/material';

@Component({
  selector: 'app-motivos',
  templateUrl: './motivos.page.html',
  styleUrls: ['./motivos.page.scss'],
})
export class MotivosPage implements OnInit {

  displayedColumns: string[] = ['motivo', 'des_motivo', 'estado', 'tipo'];

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

  constructor() {
    this.getMotivos();
  }

  ngOnInit() {
    this.getMotivos();
  }

  getMotivos() {
    this.dataSource.data = this.dummyData;
  }

}
