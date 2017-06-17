import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import {HttpModule, JsonpModule } from '@angular/http';
import {NgbModule} from '@ng-bootstrap/ng-bootstrap';
import { AppComponent } from './app.component';
import { HeaderComponent } from './header/header.component';
import { MainComponent } from './main/main.component';
import { ArtsComponent } from './arts/arts.component';
import { AuthorsComponent } from './authors/authors.component';
import { ArtsListComponent } from './arts/arts-list/arts-list.component';
import { ArtsDetailComponent } from './arts/arts-detail/arts-detail.component';
import { HomeComponent } from './home/home.component';
import {AppRoutingModule} from './app-routing/app-routing.module';
import { AuthorsDetailComponent } from './authors/authors-detail/authors-detail.component';
import {ArtsService} from './arts/service/arts.service';
import { SelectAuthorComponent } from './arts/selects/select-author/select-author.component';
import {AuthorService} from './authors/service/author.service';
import { ArtsSearchComponent } from './arts/arts-search/arts-search.component';
import { SelectArtsComponent } from './arts/selects/select-arts/select-arts.component';
import { ArtMinComponent } from './arts/art-min/art-min.component';

@NgModule({
  declarations: [
    AppComponent,
    HeaderComponent,
    MainComponent,
    ArtsComponent,
    AuthorsComponent,
    ArtsListComponent,
    ArtsDetailComponent,
    HomeComponent,
    AuthorsDetailComponent,
    SelectAuthorComponent,
    ArtsSearchComponent,
    SelectArtsComponent,
    ArtMinComponent,
  ],
  imports: [
    BrowserModule,
    FormsModule,
    HttpModule,
    NgbModule.forRoot(),
    AppRoutingModule,
    JsonpModule
  ],
  providers: [ArtsService, AuthorService],
  bootstrap: [AppComponent]
})
export class AppModule { }
