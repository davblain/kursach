
import {NameEntity} from './NameEntity';
export interface Art {
  id: number;
  name: string;
  yearOfCreation: number;
  description: string;
  type: NameEntity;
  genre: NameEntity;
  material: NameEntity;
  image: string;
  prewimage: string;
  author: NameEntity;
}
