import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { AboutComponent } from './about/about.component';
import { ContactUsComponent } from './contact-us/contact-us.component';
import { StoreComponent } from './store/store.component';
import { ServicesComponent } from './services/services.component';
import { CartComponent } from './cart/cart.component';
import { CheckoutComponent } from './checkout/checkout.component';
import { OdertrackingComponent } from './odertracking/odertracking.component';

@NgModule({
  declarations: [
    AppComponent,
    AboutComponent,
    ContactUsComponent,
    StoreComponent,
    ServicesComponent,
    CartComponent,
    CheckoutComponent,
    OdertrackingComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    BrowserAnimationsModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
