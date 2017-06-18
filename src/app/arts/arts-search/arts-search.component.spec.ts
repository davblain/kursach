import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ArtsSearchComponent } from './arts-search.component';

describe('ArtsSearchComponent', () => {
  let component: ArtsSearchComponent;
  let fixture: ComponentFixture<ArtsSearchComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ArtsSearchComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ArtsSearchComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should be created', () => {
    expect(component).toBeTruthy();
  });
});
