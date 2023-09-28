import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { CarserService } from '../carser.service';
import {Car} from "../car";
import { Location } from '@angular/common';



@Component({
  selector: 'app-car-detail',
  templateUrl: './car-detail.component.html',
  styleUrls: ['./car-detail.component.css']
})
export class CarDetailComponent implements OnInit{

  constructor(private route: ActivatedRoute,
    private carservice:CarserService,
    private location: Location){}

    car:Car | undefined;

  ngOnInit(): void {

    //Retrieve the car according to the car ID
    const cid=Number(this.route.snapshot.paramMap.get("id"));
    this.car=this.carservice.getCarById(cid);
    
  }
  goBack():void{
    this.location.back();
  }
  
}
