import { NgModule }      from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { homeComponent }  from './pages/home/home.component';

@NgModule({
  imports:      [ BrowserModule ],
  declarations: [ homeComponent ],
  bootstrap:    [ homeComponent ]
})
export class AppModule { }