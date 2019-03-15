<?= render(["partial" => "admin/shepherd"]); ?>

<!-- highchartjs start -->
<!-- source: https://www.highcharts.com -->
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>

<div class="container-fluid">
  <div id="highcharts" style="position: relative; width: 100%;  margin: 0 auto"></div>
</div>
<?php
$products_total_count = Product::load()->count();

$categories = Category::all();
$categories_highcharts = [];
if ($categories) {
  foreach ($categories as $category) {
    $products_count = 0;
    $producttypes = $category->all_of_producttype;
    if ($producttypes) {
      foreach ($producttypes as $producttype) {
        $products = $producttype->all_of_product;
        if ($products)
          $products_count += count($products);
      }
    }
    $percent = ($products_total_count != 0) ? (100 * $products_count) / $products_total_count : 0;
    $categories_highcharts[] = ["name" => $category->name, "y" => $percent];
  }
}
?>
<script type="text/javascript">
  Highcharts.createElement('link', {
   href: "http://fonts.googleapis.com/css?family=Monda",
   rel: "stylesheet",
   type: "text/css"
 }, null, document.getElementsByTagName('head')[0]);

  // Build the chart
  Highcharts.chart('highcharts', {
    chart: {
      plotBackgroundColor: null,
      plotBorderWidth: null,
      plotShadow: false,
      type: 'pie'
    },
    title: {
      text: 'Ürünler'
    },
    tooltip: {
      pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
    },
    plotOptions: {
      pie: {
        allowPointSelect: true,
        cursor: 'pointer',
        dataLabels: {
          enabled: false
        },
        showInLegend: true
      }
    },
    series: [{
      name: 'Yüzde',
      colorByPoint: true,
      data: <?= json_encode($categories_highcharts); ?>

    }],
    credits: {
      enabled: false
    }
  });
</script>
<!-- highchartjs end -->