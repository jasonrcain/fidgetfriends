<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| This scaffold uses a Vue SPA "sitting on top" of Laravel.
| Laravel serves one Blade view and Vue Router handles the pages.
|
*/

Route::view('/', 'app')->name('spa');
Route::view('/{any}', 'app')
    ->where('any', '.*')
    ->name('spa.fallback');
