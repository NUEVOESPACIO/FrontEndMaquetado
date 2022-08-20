import { TestBed } from '@angular/core/testing';

import { AzarService } from './azar.service';

describe('AzarService', () => {
  let service: AzarService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(AzarService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
