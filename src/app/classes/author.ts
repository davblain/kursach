import {NameEntity} from './NameEntity';
import {NgbDateStruct} from '@ng-bootstrap/ng-bootstrap';
export interface Author {
  id: number;
  name: string;
  description: string;
  dateOfBirth: NgbDateStruct;
  dateOfDeath: NgbDateStruct;
  country: NameEntity;
}
