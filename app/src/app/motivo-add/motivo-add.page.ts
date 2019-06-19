import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-motivo-add',
  templateUrl: './motivo-add.page.html',
  styleUrls: ['./motivo-add.page.scss'],
})
export class MotivoAddPage implements OnInit {

  motivo: any = {};

  constructor() { }

  ngOnInit() {
  }

}
