import { Component, OnInit } from '@angular/core';
import {Art} from '../../classes/art';
import {ArtsService} from '../service/arts.service';

@Component({
  selector: 'app-arts-list',
  templateUrl: './arts-list.component.html',
  styleUrls: ['./arts-list.component.css']
})
export class ArtsListComponent implements OnInit {
  arts: Art[]
  constructor(private artService: ArtsService) { }

  ngOnInit() {
    this.getArtList();
  }
  getArtList() {
    this.artService.getArtList().subscribe(res => this.arts = res);
  }

}
