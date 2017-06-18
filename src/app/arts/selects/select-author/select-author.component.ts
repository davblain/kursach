import { Component, OnInit } from '@angular/core';
import {AuthorService} from '../../../authors/service/author.service';
import {Observable} from 'rxjs/Observable';
import 'rxjs/add/operator/debounceTime';
import 'rxjs/add/operator/distinctUntilChanged';
import 'rxjs/add/operator/do';
import 'rxjs/add/operator/switchMap';
import 'rxjs/add/operator/catch';
import {NameEntity} from '../../../classes/NameEntity';
@Component({
  selector: 'app-select-author',
  templateUrl: './select-author.component.html',
  styleUrls: ['./select-author.component.css']
})
export class SelectAuthorComponent implements OnInit {
  searching = false;
  searchFailed = false;
  model: NameEntity;

  formatter = (x: NameEntity) => x.name;

  search =  (text$: Observable<string>) =>
    text$
      .debounceTime(300)
      .distinctUntilChanged()
      .do(() => this.searching = true)
      .switchMap(term => this.authorsService.getNames(term)
      .do(() => {
        this.searchFailed = false;
      })
      .catch(() => {
        this.searchFailed = true;
        return Observable.of([]);
      }))
      .do(() => this.searching = false);




    constructor(private authorsService: AuthorService) { }
  ngOnInit() {}

}
