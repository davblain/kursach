import {Component, Input, OnInit} from '@angular/core';
import {Author} from '../../classes/author';
import {NgbActiveModal, NgbDateStruct} from '@ng-bootstrap/ng-bootstrap';
import {AuthorService} from '../service/author.service';


@Component({
  selector: 'app-authors-detail',
  templateUrl: './authors-detail.component.html',
  styleUrls: ['./authors-detail.component.css']
})
export class AuthorsDetailComponent implements OnInit {
  @Input() author: Author;
  offset= 100;
  defaultImage = 'assets/img/gallery/authors/min/default.jpg';
  constructor(public activeModal: NgbActiveModal, private authorService: AuthorService) {}
  ngOnInit() {
  }

}
