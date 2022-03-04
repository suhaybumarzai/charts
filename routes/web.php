<?php

use App\Http\Controllers\LanguageController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
 */

Auth::routes(['verify' => true]);

// Dashboard Route
Route::get('/', 'ChartController@sparklines');
// Charts Route
Route::get('/charts-chartjs', 'ChartController@chartJs');
Route::get('/charts-chartist', 'ChartController@chartist');
Route::get('/charts-sparklines', 'ChartController@sparklines');


// locale route
Route::get('lang/{locale}', [LanguageController::class, 'swap']);
