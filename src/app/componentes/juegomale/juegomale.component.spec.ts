import { ComponentFixture, TestBed } from '@angular/core/testing';

import { JuegomaleComponent } from './juegomale.component';

describe('JuegomaleComponent', () => {
  let component: JuegomaleComponent;
  let fixture: ComponentFixture<JuegomaleComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ JuegomaleComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(JuegomaleComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
