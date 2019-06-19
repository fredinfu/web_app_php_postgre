import { NgModule } from '@angular/core';
import { PreloadAllModules, RouterModule, Routes } from '@angular/router';

const routes: Routes = [
  { path: '', redirectTo: 'motivos', pathMatch: 'full' },
  { path: 'home', loadChildren: './home/home.module#HomePageModule' },
  { path: 'motivos', loadChildren: './motivos/motivos.module#MotivosPageModule' },
  { path: 'motivo-add', loadChildren: './motivo-add/motivo-add.module#MotivoAddPageModule' },
  { path: 'motivo-update', loadChildren: './motivo-update/motivo-update.module#MotivoUpdatePageModule' },
];

@NgModule({
  imports: [
    RouterModule.forRoot(routes, { preloadingStrategy: PreloadAllModules })
  ],
  exports: [RouterModule]
})
export class AppRoutingModule { }
