import { Injectable } from '@angular/core';
import {Http,Jsonp} from '@angular/http';
import {Observable} from "rxjs/Observable";
import "rxjs/add/operator/map"
import {Art} from "../../classes/art";
@Injectable()
export class ArtsService {
  private apiUrl="service/arts"
  constructor(private http: Http) { }
  getArtList():Observable<Art[]>{
    return this.http.get(this.apiUrl).map(rez => rez.json());
  }
  getArtById(id:number):Observable<Art> {
    return this.http.get(this.apiUrl+"/"+id).map(rez => rez.json());

  }
  getNames(term: string ) {
    if (term === '') {
      return Observable.of([]);
    }
    return this.http.get(this.apiUrl + '?search=' + term).map(rez => rez.json());
  }


}
