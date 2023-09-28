import { Injectable } from '@angular/core';
import {CARLISTS } from "./mock.cars";
import {Car} from "./car";
@Injectable({
  providedIn: 'root'
})
export class CarserService {

  constructor() { }

  //Create a method to get all data from datalist

  getAllCar():Car[]{
    return CARLISTS;
  }

  //Get car by ID
  getCarById(cid:number):Car{
    const car=CARLISTS.find(c=>c.carid===cid)!;
    return car;
  }


}
