import { Injectable } from '@angular/core';
import {Http} from '@angular/http';
import {Observable} from 'rxjs/Observable';
import {NameEntity} from '../../classes/NameEntity';
import 'rxjs/add/observable/of';
import {Author} from '../../classes/author';

@Injectable()
export class AuthorService {
  private apiUrl = '/service/authors'

  constructor(private http: Http) {
  }

  getNames(term: string) {
    if (term === '') {
      return Observable.of([]);
    }
    return this.http.get(this.apiUrl + '?search=' + term).map(rez => rez.json());
  }

  getAuthorsList(): Observable<Author[]> {
    return this.http.get(this.apiUrl).map(rez => rez.json());
  }

  getAuthorById(id: number): Observable<Author> {
    return this.http.get(this.apiUrl + '/' + id).map(rez => rez.json());
  }
}
