import { Component, OnInit } from '@angular/core';
import { CarserService } from '../carser.service';
import {Car} from "../car"

@Component({
  selector: 'app-listcars',
  templateUrl: './listcars.component.html',
  styleUrls: ['./listcars.component.css']
})
export class ListcarsComponent implements OnInit {

  constructor( private carservice:CarserService ){}

  cars: Car[] = [];

  ngOnInit(): void {
    this.cars=this.carservice.getAllCar();
  }

  

}
