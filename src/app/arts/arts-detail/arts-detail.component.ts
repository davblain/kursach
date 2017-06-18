import {Component, Input, OnInit} from '@angular/core';
import {NgbActiveModal, NgbModal} from '@ng-bootstrap/ng-bootstrap';
import {ArtsService} from '../service/arts.service';
import {Art} from '../../classes/art';
import {Observable} from 'rxjs/Observable';

@Component({
  selector: 'app-arts-detail',
  templateUrl: './arts-detail.component.html',
  styleUrls: ['./arts-detail.component.css']
})
export class ArtsDetailComponent implements OnInit {
  @Input() id: number;
  art: Art;
  constructor(public activeModal: NgbActiveModal, private artService: ArtsService) { }

  ngOnInit() {
    this.getArt();
  }
  getArt() {
     this.artService.getArtById(this.id).subscribe(rez => this.art = rez);
  }

}
