import { Component, OnInit } from '@angular/core';
import {Author} from '../../classes/author';
import {ArtsService} from '../../arts/service/arts.service';
import {AuthorService} from '../service/author.service';

@Component({
  selector: 'app-author-list',
  templateUrl: './author-list.component.html',
  styleUrls: ['./author-list.component.css']
})
export class AuthorListComponent implements OnInit {

  authors: Author[]
  constructor(private authorService: AuthorService) { }

  ngOnInit() {
    this.getArtList();
  }
  getArtList() {
    this.authorService.getAuthorsList().subscribe(res => this.authors = res);
  }
}
