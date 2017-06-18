import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AuthorMinComponent } from './author-min.component';

describe('AuthorMinComponent', () => {
  let component: AuthorMinComponent;
  let fixture: ComponentFixture<AuthorMinComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AuthorMinComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AuthorMinComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should be created', () => {
    expect(component).toBeTruthy();
  });
});
