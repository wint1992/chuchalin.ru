System.config({
    map: {
      'angularApp':                        './js', // 'dist',
      '@angular':                   'node_modules/@angular',
      'angular2-in-memory-web-api': 'node_modules/angular2-in-memory-web-api',
      'rxjs':                       'node_modules/rxjs'
    },
    packages: {
      // Application
      'angularApp':                         { main: 'main.js',  defaultExtension: 'js' },
      // Angular 2 packages
      'rxjs':                               { defaultExtension: 'js' },
      'angular2-in-memory-web-api':         { main: 'index.js', defaultExtension: 'js' },
      '@angular/common':                    { main: 'index.js', defaultExtension: 'js' },
      '@angular/compiler':                  { main: 'index.js', defaultExtension: 'js' },
      '@angular/core':                      { main: 'index.js', defaultExtension: 'js' },
      '@angular/forms':                     { main: 'index.js', defaultExtension: 'js' },
      '@angular/http':                      { main: 'index.js', defaultExtension: 'js' },
      '@angular/platform-browser':          { main: 'index.js', defaultExtension: 'js' },
      '@angular/platform-browser-dynamic':  { main: 'index.js', defaultExtension: 'js' },
      '@angular/router':                    { main: 'index.js', defaultExtension: 'js' },
      '@angular/router-deprecated':         { main: 'index.js', defaultExtension: 'js' },
      '@angular/upgrade':                   { main: 'index.js', defaultExtension: 'js' },
    }
});