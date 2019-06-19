import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import 'rxjs/operator/map';
import { RequestOptions } from '@angular/http';

@Injectable({
  providedIn: 'root'
})
export class ApiService {

  Global = { DevApi : 'http://localhost/motivos/api/motivos-api.php' };

  constructor(
    private http: HttpClient
  ) { }

  get(action: string, data: any) {
    data.action = action;
    return this.http.get(this.Global.DevApi, { params: data });
  }
}
