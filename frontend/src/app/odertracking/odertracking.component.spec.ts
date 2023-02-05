import { ComponentFixture, TestBed } from '@angular/core/testing';

import { OdertrackingComponent } from './odertracking.component';

describe('OdertrackingComponent', () => {
  let component: OdertrackingComponent;
  let fixture: ComponentFixture<OdertrackingComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ OdertrackingComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(OdertrackingComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
