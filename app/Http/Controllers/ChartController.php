<?php

namespace App\Http\Controllers;
use App\Sales;
class ChartController extends Controller
{
    public function chartJs()
    {
        // Breadcrumbs
        $breadcrumbs = [
            ['link' => "modern", 'name' => "Home"], ['link' => "javascript:void(0)", 'name' => "Charts"], ['name' => "Charts Chartjs"],
        ];
        //Pageheader set true for breadcrumbs
        $pageConfigs = ['pageHeader' => true, 'isFabButton' => true];

        return view('pages.charts-chartjs', ['breadcrumbs' => $breadcrumbs], ['pageConfigs' => $pageConfigs]);
    }
    public function chartist()
    {
        // Breadcrumbs
        $breadcrumbs = [
            ['link' => "modern", 'name' => "Home"], ['link' => "javascript:void(0)", 'name' => "Charts"], ['name' => "Charts Chartist"],
        ];
        //Pageheader set true for breadcrumbs
        $pageConfigs = ['pageHeader' => true, 'isFabButton' => true];

        return view('pages.charts-chartist', ['breadcrumbs' => $breadcrumbs], ['pageConfigs' => $pageConfigs]);
    }
    public function sparklines()
    {
        // Breadcrumbs
        $breadcrumbs = [
            ['link' => "modern", 'name' => "Home"], ['link' => "javascript:void(0)", 'name' => "Charts"], ['name' => "Charts Sparklines"],
        ];
        //Pageheader set true for breadcrumbs
        $pageConfigs = ['pageHeader' => true, 'isFabButton' => true];
        $total_tax = Sales::sum('tax');
        $total_sales = Sales::count('id');  
        $higest_tax = Sales::orderBy('tax', 'desc')->value('tax');
        $higest_sale = Sales::max('grand_total');  
        //location graph
        $cust_province = Sales::select('cust_province')->distinct()->pluck('cust_province');
        $location_set = array();
        $max_tax_set = array();
        foreach($cust_province as $val){
            $location_set[] = Sales::where('cust_province',$val)->count();
            $max_tax_set[] = Sales::where('cust_province',$val)->sum('tax');  
        }  
        $cust_province = json_encode($cust_province);
        $location_set  = json_encode($location_set);
        $max_tax_set  = json_encode($max_tax_set);
        //sales by customer
        $customers = Sales::select('cust_fname')->distinct()->pluck('cust_fname');
        $customer_sales = array();
        foreach($customers as $cust){
            $customer_sales[] = Sales::where('cust_fname',$cust)->sum('grand_total');  
        }  
        $customers = json_encode($customers);
        $customer_sales = json_encode($customer_sales);
        $get_all = Sales::all();
        //customer with cities
        $cust_city = Sales::select('cust_city')->distinct()->pluck('cust_city');
        $customer_count = array();
        foreach($cust_city as $city){
            $customer_count[] = Sales::where('cust_city',$city)->count('cust_fname');  
        }
        $customer_count = json_encode($customer_count);
        $cust_city = json_encode($cust_city);
        //dd($max_tax_set);
        return view('pages.charts-sparklines',compact('total_tax','total_sales','higest_tax','higest_sale','cust_province','location_set','max_tax_set','customers','customer_sales','get_all','customer_count','cust_city'), ['breadcrumbs' => $breadcrumbs], ['pageConfigs' => $pageConfigs]);
    }
}
