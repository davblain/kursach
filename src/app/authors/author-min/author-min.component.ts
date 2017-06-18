import {Component, Input, OnInit} from '@angular/core';
import {Author} from '../../classes/author';
import {AuthorsDetailComponent} from '../authors-detail/authors-detail.component';
import {NgbDateStruct, NgbModal} from '@ng-bootstrap/ng-bootstrap';

@Component({
  selector: 'app-author-min',
  templateUrl: './author-min.component.html',
  styleUrls: ['./author-min.component.css']
})
export class AuthorMinComponent implements OnInit {

  @Input() author: Author;

  defaultImage = 'assets/img/gallery/authors/min/default.jpg';
  offset = 100;
  dateOfBirth: NgbDateStruct;
  constructor(private modalService: NgbModal) { }

  ngOnInit() {
  }
  open() {
    const modalRef = this.modalService.open(AuthorsDetailComponent, { windowClass : 'my-modal-window' } );
    modalRef.componentInstance.author = this.author;
  }
}
