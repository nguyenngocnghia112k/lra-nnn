<?php


use App\Http\Controllers\DanhmucController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\SanphamController;
use App\Http\Controllers\ThuonghieuController;
use App\Models\Thuonghieu;

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

Route::get('/', function () {
    return view('frontend.index');
})->name('home');

Route::get('/shop', function () {
    return view('frontend/shop');
})->name('shop');

Route::get('/blog', function () {
    return view('frontend/blog');
})->name('blog');

Route::get('/about', function () {
    return view('frontend/about');
})->name('about');

Route::get('/contact', function () {
    return view('frontend/contact');
})->name('contact');

Route::get('/cart', function () {
    return view('frontend/cart');
})->name('cart');



Route::controller(AuthController::class)->group(function () {
    Route::get('register', 'register')->name('register');
    Route::post('register', 'registerSave')->name('register.save');

    Route::get('login', 'login')->name('login');
    Route::post('login', 'loginAction')->name('login.action');

    Route::get('logout', 'logout')->middleware('auth')->name('logout');
});

Route::middleware('auth')->group(function () {
    Route::get('dashboard', function () {
        return view('dashboard');
    })->name('dashboard');

    Route::controller(DanhmucController::class)->prefix('danhmuc')->group(function(){
        Route::get('', 'index')->name('danhmuc');
        Route::get('add', 'add')->name('danhmuc.add');
        Route::post('add', 'save')->name('danhmuc.save');
        Route::get('edit/{id}', 'edit')->name('danhmuc.edit');
        Route::post('edit/{id}', 'update')->name('danhmuc.update');
        Route::get('delete/{id}', 'delete')->name('danhmuc.delete');

    });
    Route::controller(ThuonghieuController::class)->prefix('thuonghieu')->group(function(){
        Route::get('', 'index')->name('thuonghieu');
        Route::get('add', 'add')->name('thuonghieu.add');
        Route::post('add', 'save')->name('thuonghieu.save');
        Route::get('edit/{id}', 'edit')->name('thuonghieu.edit');
        Route::post('edit/{id}', 'update')->name('thuonghieu.update');
        Route::get('delete/{id}', 'delete')->name('thuonghieu.delete');

    });

    Route::controller(SanphamController::class)->prefix('sanpham')->group(function(){
        Route::get('', 'index')->name('sanpham');
        Route::get('view/{id}', 'view')->name('sanpham.view');
        Route::get('add', 'add')->name('sanpham.add');
        Route::post('add', 'save')->name('sanpham.save');
        Route::get('edit/{id}', 'edit')->name('sanpham.edit');
        Route::post('edit/{id}', 'update')->name('sanpham.update');
        Route::get('delete/{id}', 'delete')->name('sanpham.delete');

    });

    // Route::controller(ProductController::class)->prefix('products')->group(function () {
    //     Route::get('', 'index')->name('products');
    //     Route::get('add', 'add')->name('products.add');
    //     Route::post('add', 'save')->name('products.save');
    //     Route::get('edit/{id}', 'edit')->name('products.edit');
    //     Route::post('edit/{id}', 'update')->name('products.update');
    //     Route::get('delete/{id}', 'delete')->name('products.delete');
    // });

    // Route::controller(CategoryController::class)->prefix('category')->group(function () {
    //     Route::get('', 'index')->name('category');
    //     Route::get('add', 'add')->name('category.add');
    //     Route::post('save', 'save')->name('category.save');
    //     Route::get('edit/{id}', 'edit')->name('category.edit');
    //     Route::post('edit/{id}', 'update')->name('category.update');
    //     Route::get('delete/{id}', 'delete')->name('category.delete');
    // });

    // Route::controller(UserController::class)->prefix('users')->group(function () {
    //     Route::get('', 'index')->name('users');
    //     Route::get('add', 'add')->name('users.add');
    //     Route::post('save', 'save')->name('users.save');
    //     Route::get('edit/{id}', 'edit')->name('users.edit');
    //     Route::post('edit/{id}', 'update')->name('users.update');
    //     Route::get('delete/{id}', 'delete')->name('users.delete');
    // });

    // Route::controller(OrderController::class)->prefix('orders')->group(function () {
    //     Route::get('', 'index')->name('orders');
    // });
});