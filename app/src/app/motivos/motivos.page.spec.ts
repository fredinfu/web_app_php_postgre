import { CUSTOM_ELEMENTS_SCHEMA } from '@angular/core';
import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { MotivosPage } from './motivos.page';

describe('MotivosPage', () => {
  let component: MotivosPage;
  let fixture: ComponentFixture<MotivosPage>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ MotivosPage ],
      schemas: [CUSTOM_ELEMENTS_SCHEMA],
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(MotivosPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
