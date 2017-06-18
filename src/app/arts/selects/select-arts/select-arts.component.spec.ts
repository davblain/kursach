import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { SelectArtsComponent } from './select-arts.component';

describe('SelectArtsComponent', () => {
  let component: SelectArtsComponent;
  let fixture: ComponentFixture<SelectArtsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ SelectArtsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(SelectArtsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should be created', () => {
    expect(component).toBeTruthy();
  });
});
