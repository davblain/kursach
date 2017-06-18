import { Component, OnInit } from '@angular/core';
import {ArtsService} from './service/arts.service';
import {Art} from '../classes/art';

@Component({
  selector: 'app-arts',
  templateUrl: './arts.component.html',
  styleUrls: ['./arts.component.css']
})
export class ArtsComponent implements OnInit {
  constructor() {
  }

  ngOnInit() {
  }
}
