import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { Routes, RouterModule } from '@angular/router';

import { IonicModule } from '@ionic/angular';

import { MotivoUpdatePage } from './motivo-update.page';

const routes: Routes = [
  {
    path: '',
    component: MotivoUpdatePage
  }
];

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    RouterModule.forChild(routes)
  ],
  declarations: [MotivoUpdatePage]
})
export class MotivoUpdatePageModule {}
