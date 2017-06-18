import {Component, Input, OnInit} from '@angular/core';
import {Art} from '../../classes/art';
import {NgbModal} from '@ng-bootstrap/ng-bootstrap';
import {ArtsDetailComponent} from '../arts-detail/arts-detail.component';

@Component({
  selector: 'app-art-min',
  templateUrl: './art-min.component.html',
  styleUrls: ['./art-min.component.css']
})
export class ArtMinComponent implements OnInit {
  @Input() art: Art;
  constructor(private  modalService: NgbModal) { }
  ngOnInit() {
  }
  open() {
    const modalRef = this.modalService.open(ArtsDetailComponent, { windowClass : 'my-modal-window' } );
    modalRef.componentInstance.id = this.art.id;
  }

}
