import { Component, OnInit } from '@angular/core';
import { ApiService } from '../api.service';
import { AlertController } from '@ionic/angular';
import { Router } from '@angular/router';

@Component({
  selector: 'app-motivo-add',
  templateUrl: './motivo-add.page.html',
  styleUrls: ['./motivo-add.page.scss'],
})
export class MotivoAddPage implements OnInit {

  motivo: any = {};

  constructor(
    private api: ApiService,
    private alertCtrl: AlertController,
    private router: Router
  ) { }

  ngOnInit() {
  }

  addMotivo() {
    this.api.get('add_motivo', this.motivo ).subscribe(s => {
      const response = s as any;
      if (response.success) {
        this.confirmDialog();
      }
    });
  }

  async confirmDialog() {
    const alert = await this.alertCtrl.create({
      message: '¡Motivo agregado correctamente!',
      buttons: [
          {
              text: 'Cerrar',
              handler: () => {
                this.router.navigate(['/motivos']);
              }
          }
      ]
    });

    await alert.present();
  }

}
