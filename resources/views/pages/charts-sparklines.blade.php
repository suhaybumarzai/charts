{{-- extend Layouts --}}
@extends('layouts.contentLayoutMaster')

{{-- page title --}}
@section('title','Charts Sparklines')

{{-- page styles --}}
@section('vendor-style')
<link rel="stylesheet" type="text/css" href="{{asset('vendors/flag-icon/css/flag-icon.min.css')}}">
<link rel="stylesheet" type="text/css" href="{{asset('vendors/data-tables/css/jquery.dataTables.min.css')}}">
<link rel="stylesheet" type="text/css"
  href="{{asset('vendors/data-tables/extensions/responsive/css/responsive.dataTables.min.css')}}">
<link rel="stylesheet" type="text/css" href="{{asset('vendors/data-tables/css/select.dataTables.min.css')}}">
@endsection
@section('page-style')
<link rel="stylesheet" type="text/css" href="{{asset('css/pages/charts-sparkline.css')}}">
<link rel="stylesheet" type="text/css" href="{{asset('css/pages/data-tables.css')}}">
@endsection

{{-- page content --}}
@section('content')
<div class="section" id="materialize-sparkline">

  <!--Simple Line Chart-->
  <div class="row">
    <div class="col s12 m6 l3">
      <div class="ct-chart card z-depth-2 border-radius-6">
        <div class="card-content">
          <div class="row">
            <div class="col s12">
              <h4 class="card-title">Total Tax Collcted</h4>
            </div>
            <div class="col s12 display-flex">
              <div id="sales-bar-1"></div>
              <p class="mt-4 pink-text accent-2"><i class="material-icons dp48 vertical-align-bottom">arrow_upward</i>
                {{ $total_tax }}</p>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col s12 m6 l3">
      <div class="ct-chart card z-depth-2 border-radius-6">
        <div class="card-content">
          <div class="row">
            <div class="col s12">
              <h4 class="card-title truncate">Total Number Of Sales</h4>
            </div>
            <div class="col s12 display-flex">
              <div id="sales-bar-2"></div>
              <p class="mt-4 blue-text"><i class="material-icons dp48 vertical-align-bottom">arrow_upward</i>
                {{ $total_sales }}</p>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col s12 m6 l3">
      <div class="ct-chart card z-depth-2 border-radius-6">
        <div class="card-content">
          <div class="row">
            <div class="col s12">
              <h4 class="card-title">Highest Tax Paid</h4>
            </div>
            <div class="col s12 display-flex light-green-text">
              <div id="sales-bar-3"></div>
              <p class="mt-4 "><i class="material-icons dp48 vertical-align-bottom">arrow_upward</i>
                {{ $higest_tax }}</p>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col s12 m6 l3">
      <div class="ct-chart card z-depth-2 border-radius-6">
        <div class="card-content">
          <div class="row">
            <div class="col s12">
              <h4 class="card-title">Highest Sale</h4>
            </div>
            <div class="col s12 display-flex amber-text accent-2">
              <div id="sales-bar-4"></div>
              <p class="mt-4 "><i class="material-icons dp48 vertical-align-bottom">arrow_downward</i>
                {{ $higest_sale }}</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<div id="chartjs-bar-chart" class="card">
      <div class="card-content">
         <h4 class="card-title">Customer location bar</h4>
         <div class="row">
            <div class="col s12">
               <p class="mb-2">
                  Total number of customer are listed with respect to provience.
               </p>
               <div class="sample-chart-wrapper"><canvas id="bar-chart" height="400"></canvas></div>
            </div>
         </div>
      </div>
   </div>
   <!-- 2nd chart -->
   <div id="chartjs-polar-chart" class="card">
      <div class="card-content">
         <h4 class="card-title">Tax</h4>
         <div class="row">
            <div class="col s12">
               <p class="mb-2">
                  Total tax with respect to provience.
               </p>
               <div class="sample-chart-wrapper"><canvas id="polar-chart" height="400"></canvas></div>
            </div>
         </div>
      </div>
   </div>
   <!-- 2nd chart -->
   <div id="chartjs-polar-chart" class="card">
      <div class="card-content">
         <h4 class="card-title"></h4>
         <div class="row">
            <div class="col s12">
               <p class="mb-2">
                  Tax paid with respect to customers.
               </p>
               <div class="sample-chart-wrapper"><canvas id="customer-d" height="400"></canvas></div>
            </div>
         </div>
      </div>
   </div>

   <div id="chartjs-polar-chart" class="card">
      <div class="card-content">
         <h4 class="card-title">Customers in cities</h4>
         <div class="row">
            <div class="col s12">
               <p class="mb-2">
                  Total number of customers with respect to cities.
               </p>
               <div class="sample-chart-wrapper"><canvas id="canvas" height="400"></canvas></div>
            </div>
         </div>
      </div>
   </div>
   <!-- table -->
   <!-- DataTables example -->
  <div class="row">
    <div class="col s12 m12 l12">
      <div id="button-trigger" class="card card card-default scrollspy">
        <div class="card-content">
          <h4 class="card-title">All Sales List</h4>
          <div class="row">
            <div class="col s12">
            </div>
            <div class="col s12">
              <table id="data-table-simple" class="display">
                <thead>
                  <tr>
                    <th>Order id</th>
                    <th>PO Number</th>
                    <th>Customer order</th>
                    <th>Currency</th>
                    <th>Customer name</th>
                    <th>City</th>
                    <th>Country</th>
                    <th>Province</th>
                    <th>Grand total</th>
                  </tr>
                </thead>
                <tbody>
                  @foreach($get_all as $list)
                  <tr>
                    <td>{{$list->order_id}}</td>
                    <td>{{$list->po_number}}</td>
                    <td>{{$list->cust_order}}</td>
                    <td>{{$list->currency}}</td>
                    <td>{{$list->cust_fname}}</td>
                    <td>{{$list->cust_city}}</td>
                    <td>{{$list->cust_country}}</td>
                    <td>{{$list->cust_province}}</td>
                    <td>{{$list->grand_total}}</td>
                  </tr>
                  @endforeach
                </tbody>
                <tfoot>
                  <tr>
                    <th>Order id</th>
                    <th>PO Number</th>
                    <th>Customer order</th>
                    <th>Currency</th>
                    <th>Customer name</th>
                    <th>City</th>
                    <th>Country</th>
                    <th>Province</th>
                    <th>Grand total</th>
                  </tr>
                </tfoot>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
@endsection

{{-- vendor scripts --}}
@section('vendor-script')
<script src="{{asset('vendors/sparkline/jquery.sparkline.min.js')}}"></script>
<script src="{{asset('vendors/chartjs/chart.min.js')}}"></script>
<script src="{{asset('vendors/data-tables/js/jquery.dataTables.min.js')}}"></script>
<script src="{{asset('vendors/data-tables/extensions/responsive/js/dataTables.responsive.min.js')}}"></script>
<script src="{{asset('vendors/data-tables/js/dataTables.select.min.js')}}"></script>
@endsection

{{-- page scripts --}}
@section('page-script')
<script src="{{asset('js/scripts/charts-sparklines.js')}}"></script>
<script src="{{asset('js/scripts/data-tables.js')}}"></script>
<script type="text/javascript">
  var cust_province = <?php echo $cust_province; ?>;
  var location_set = <?php echo $location_set; ?>;
  var max_tax_set = <?php echo $max_tax_set; ?>;
  var customers = <?php echo $customers; ?>;
  var customer_sales = <?php echo $customer_sales; ?>;
  $(window).on("load", function() {
    /*first chart*/
    //Get the context of the Chart canvas element we want to select
    var ctx = $("#bar-chart");
    // Chart Options
    var chartOptions = {
       // Elements options apply to all of the options unless overridden in a dataset
       // In this case, we are setting the border of each horizontal bar to be 2px wide and green
       elements: {
          rectangle: {
             borderWidth: 2,
             borderColor: "rgb(0, 255, 0)",
             borderSkipped: "left"
          }
       },
       responsive: true,
       maintainAspectRatio: false,
       responsiveAnimationDuration: 500,
       legend: {
          position: "top"
       },
       scales: {
          xAxes: [
             {
                display: true,
                gridLines: {
                   color: "#f3f3f3",
                   drawTicks: false
                },
                scaleLabel: {
                   display: true
                }
             }
          ],
          yAxes: [
             {
                display: true,
                gridLines: {
                   color: "#f3f3f3",
                   drawTicks: false
                },
                scaleLabel: {
                   display: true
                }
             }
          ]
       },
       title: {
          display: false,
          text: "Chart.js Horizontal Bar Chart"
       }
    };
    // Chart Data
    var chartData = {
       //labels: ["January", "February", "March", "April"],
       labels: cust_province,
       datasets: [
          {
             label: "Customer with respect to location",
             data: location_set,
             backgroundColor: "#00bcd4",
             hoverBackgroundColor: "#00acc1",
             borderColor: "transparent"
          }/*,
          {
             label: "My Second dataset",
             data: [28, 48, 40, 19],
             backgroundColor: "#ffeb3b",
             hoverBackgroundColor: "#fdd835",
             borderColor: "transparent"
          }*/
       ]
    };
    var config = {
       type: "horizontalBar",
 
       // Chart Options
       options: chartOptions,
 
       data: chartData
    };
    var barChart = new Chart(ctx, config);

    /*2nd char*/
    //Get the context of the Chart canvas element we want to select
    var ctx = $("#polar-chart");
    // Chart Options
    var chartOptions = {
       responsive: true,
       maintainAspectRatio: false,
       responsiveAnimationDuration: 500,
       legend: {
          position: "top"
       },
       title: {
          display: false,
          text: "Chart.js Polar Area Chart"
       },
       scale: {
          ticks: {
             beginAtZero: true
          },
          reverse: false
       },
       animation: {
          animateRotate: false
       }
    };
    // Chart Data
    var chartData = {
       labels: cust_province,
       datasets: [
          {
             data: max_tax_set,
             backgroundColor: ["#03a9f4", "#00bcd4", "#ffc107", "#e91e63", "#4caf50"],
             label: "My dataset" // for legend
          }
       ]
    };
 
    var config = {
       type: "polarArea",
 
       // Chart Options
       options: chartOptions,
 
       data: chartData
    };
 
    // Create the chart
    var polarChart = new Chart(ctx, config);

    /*3rd chart*/
    var ctx = $("#customer-d");
    // Chart Options
    var chartOptions = {
       // Elements options apply to all of the options unless overridden in a dataset
       // In this case, we are setting the border of each horizontal bar to be 2px wide and green
       elements: {
          rectangle: {
             borderWidth: 2,
             borderColor: "rgb(0, 255, 0)",
             borderSkipped: "left"
          }
       },
       responsive: true,
       maintainAspectRatio: true,
       responsiveAnimationDuration: 500,
       legend: {
          position: "top"
       },
       scales: {
          xAxes: [
             {
                display: true,
                gridLines: {
                   color: "#f3f3f3",
                   drawTicks: false
                },
                scaleLabel: {
                   display: true
                }
             }
          ],
          yAxes: [
             {
                display: true,
                gridLines: {
                   color: "#f3f3f3",
                   drawTicks: false
                },
                scaleLabel: {
                   display: true
                }
             }
          ]
       },
       title: {
          display: false,
          text: "Chart.js Horizontal Bar Chart"
       }
    };
    // Chart Data
    var chartData = {
       //labels: ["January", "February", "March", "April"],
       labels: customers,
       datasets: [
          {
             label: "Customers sales",
             data: customer_sales,
             backgroundColor: "#00bcd4",
             hoverBackgroundColor: "#00acc1",
             borderColor: "transparent"
          }/*,
          {
             label: "My Second dataset",
             data: [28, 48, 40, 19],
             backgroundColor: "#ffeb3b",
             hoverBackgroundColor: "#fdd835",
             borderColor: "transparent"
          }*/
       ]
    };
    var config = {
       type: "horizontalBar",
 
       // Chart Options
       options: chartOptions,
 
       data: chartData
    };
    var barChart = new Chart(ctx, config);
  });
</script>
<script>
    var cust_city = <?php echo $cust_city; ?>;
    var customer_count = <?php echo $customer_count; ?>;
    var barChartData = {
        labels: cust_city,
        datasets: [{
            label: 'Customer with city wise',
            backgroundColor: "pink",
            data: customer_count
        }]
    };

    window.onload = function() {
        var ctx = document.getElementById("canvas").getContext("2d");
        window.myBar = new Chart(ctx, {
            type: 'bar',
            data: barChartData,
            options: {
                elements: {
                    rectangle: {
                        borderWidth: 2,
                        borderColor: '#c1c1c1',
                        borderSkipped: 'bottom'
                    }
                },
                responsive: true,
                title: {
                    display: true,
                    text: 'All time customer'
                }
            }
        });
    };
</script>
<!-- <script src="{{asset('js/scripts/charts-chartjs.js')}}"></script> -->
@endsection
