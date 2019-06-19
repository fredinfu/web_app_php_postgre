import { Component, OnInit } from '@angular/core';
import { ApiService } from '../api.service';
import { AlertController } from '@ionic/angular';
import { Router } from '@angular/router';

@Component({
  selector: 'app-motivo-update',
  templateUrl: './motivo-update.page.html',
  styleUrls: ['./motivo-update.page.scss'],
})
export class MotivoUpdatePage implements OnInit {

  motivo: any = {};

  constructor(
    private api: ApiService,
    private alertCtrl: AlertController,
    private router: Router
  ) { }

  ngOnInit() {
    this.motivo = JSON.parse(localStorage.motivoActual);
  }

  updateMotivo() {
    this.api.get('update_motivo', this.motivo ).subscribe(s => {
      const response = s as any;
      if (response.success) {
        this.confirmDialog();
      }
    });
  }

  async confirmDialog() {
    const alert = await this.alertCtrl.create({
      message: '¡Registros actualizados correctamente!',
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
