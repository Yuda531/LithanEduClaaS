import { TestBed } from '@angular/core/testing';

import { CarserService } from './carser.service';

describe('CarserService', () => {
  let service: CarserService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(CarserService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
