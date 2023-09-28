import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { CarDetailComponent } from './car-detail/car-detail.component';
import { ListcarsComponent } from './listcars/listcars.component';
import { WelcomeComponentComponent } from './welcome-component/welcome-component.component';

const routes: Routes = [
  {
    path:"welcome",
    component:WelcomeComponentComponent
  },
  {
    path:"carLists",
    component:ListcarsComponent
  },
  {
    path:"carDetail/:id",
    component:CarDetailComponent
  }
];
  
@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
