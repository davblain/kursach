import { Component, OnInit } from '@angular/core';
import {NameEntity} from '../../../classes/NameEntity';
import {Observable} from 'rxjs/Observable';
import {ArtsService} from '../../service/arts.service';

@Component({
  selector: 'app-select-arts',
  templateUrl: './select-arts.component.html',
  styleUrls: ['./select-arts.component.css']
})
export class SelectArtsComponent implements OnInit {
  searching = false;
  searchFailed = false;
  model: NameEntity;
  formatter = (x: NameEntity) => x.name;
  search =  (text$: Observable<string>) =>
    text$
      .debounceTime(300)
      .distinctUntilChanged()
      .do(() => this.searching = true)
      .switchMap(term => this.artsService.getNames(term)
        .do(() => {
          this.searchFailed = false;
        })
        .catch(() => {
          this.searchFailed = true;
          return Observable.of([]);
        }))
      .do(() => this.searching = false);



  constructor(private artsService: ArtsService) { }

  ngOnInit() {
  }

}
