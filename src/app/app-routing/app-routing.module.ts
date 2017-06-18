import { NgModule } from '@angular/core';
import {RouterModule, Routes} from '@angular/router';
import {ArtsDetailComponent} from '../arts/arts-detail/arts-detail.component';
import {HomeComponent} from '../home/home.component';
import {ArtsComponent} from '../arts/arts.component';
import {AuthorsComponent} from '../authors/authors.component';
import {AuthorsDetailComponent} from '../authors/authors-detail/authors-detail.component';
import {ArtsListComponent} from '../arts/arts-list/arts-list.component';

const appRoutes: Routes = [
  { path: '', redirectTo: '/home', pathMatch: 'full' },
  { path: 'arts', component: ArtsComponent, children: [
      { path: ':id', component:  ArtsDetailComponent }
    ]}
   ,
  { path: 'authors', component: AuthorsComponent, children: [
    { path: ':id', component:  AuthorsDetailComponent },
  ] },
  { path: 'home', component: HomeComponent },
];

@NgModule({
  imports: [
    RouterModule.forRoot(appRoutes)
  ],
  exports: [RouterModule],
  declarations: []
})
export class AppRoutingModule { }
