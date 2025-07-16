import { Component, OnInit } from '@angular/core';
import { VERSION } from '@angular/core';

@Component({
  selector: 'app-mfe1',
  templateUrl: './mfe1.component.html',
  styleUrls: ['./mfe1.component.scss'],
})
export class Mfe1Component implements OnInit {
  counter = 0;
  status = 'Active';
  lastAction = 'Initialized';
  timestamp = new Date().toLocaleTimeString();
  angularVersion = VERSION.major + '.' + VERSION.minor;

  constructor() {}

  ngOnInit(): void {
    this.updateTimestamp();
  }

  incrementCounter() {
    this.counter++;
    this.lastAction = 'Incremented counter';
    this.updateTimestamp();
  }

  resetCounter() {
    this.counter = 0;
    this.lastAction = 'Reset counter';
    this.updateTimestamp();
  }

  private updateTimestamp() {
    this.timestamp = new Date().toLocaleTimeString();
  }
}
