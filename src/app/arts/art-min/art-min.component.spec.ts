import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ArtMinComponent } from './art-min.component';

describe('ArtMinComponent', () => {
  let component: ArtMinComponent;
  let fixture: ComponentFixture<ArtMinComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ArtMinComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ArtMinComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should be created', () => {
    expect(component).toBeTruthy();
  });
});
