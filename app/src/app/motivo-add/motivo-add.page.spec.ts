import { CUSTOM_ELEMENTS_SCHEMA } from '@angular/core';
import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { MotivoAddPage } from './motivo-add.page';

describe('MotivoAddPage', () => {
  let component: MotivoAddPage;
  let fixture: ComponentFixture<MotivoAddPage>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ MotivoAddPage ],
      schemas: [CUSTOM_ELEMENTS_SCHEMA],
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(MotivoAddPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
