<?php 
include("Product.php");
$product = new Product();
$categories = $product->getCategories();
$brands = $product->getBrand();
$materials = $product->getMaterial();
$productSizes = $product->getProductSize();
$totalRecords = $product->getTotalProducts();
include('inc/header.php');
?>
<title>MyFashion.com : Fashion at its peak! </title>
<link rel="stylesheet" type='text/css' href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/fontawesome.min.css">
<link rel="stylesheet" type='text/css' href="css/style.css">       
<?php include('inc/container.php');?>
<div class="content"> 
	<div class="container-fluid">
		<h2>Place an Order for your wears </h2>			
            <form method="post" id="search_form">               
                <div class="row">                    
                    <aside class="col-lg-3 col-md-4">						
						<div class="panel list">
                            <div class="panel-heading"><h3 class="panel-title" data-toggle="collapse" data-target="#panelOne" aria-expanded="true">Categories</h3></div>
                            <div class="panel-body collapse in" id="panelOne">
                                <ul class="list-group">
                                <?php 
								foreach ($categories as $key => $category) {
                                    if(isset($_POST['category'])) {
                                        if(in_array($product->cleanString($category['category_id']),$_POST['category'])) {
                                            $categoryCheck ='checked="checked"';
                                        } else {
											$categoryCheck="";
                                        }
									}
                                ?>
								<li class="list-group-item">
									<div class="checkbox"><label><input type="checkbox" value="<?php echo $product->cleanString($category['category_id']); ?>" <?php echo @$categoryCheck; ?> name="category[]" class="sort_rang category"><?php echo ucfirst($category['category_name']); ?></label></div>
								</li>
                                <?php } ?>
                                </ul>
                            </div>
                        </div>
                        <div class="panel list">
                            <div class="panel-heading"><h3 class="panel-title" data-toggle="collapse" data-target="#panelOne" aria-expanded="true">Brand</h3></div>
                            <div class="panel-body collapse in" id="panelOne">
                                <ul class="list-group">
                                <?php 
								foreach ($brands as $key => $brand) {
                                    if(isset($_POST['brand'])) {
                                        if(in_array($product->cleanString($brand['brand']),$_POST['brand'])) {
                                            $brandChecked ='checked="checked"';
                                        } else {
											$brandChecked="";
                                        }
									}
                                ?>
								<li class="list-group-item">
									<div class="checkbox"><label><input type="checkbox" value="<?php echo $product->cleanString($brand['brand']); ?>" <?php echo @$brandChecked; ?> name="brand[]" class="sort_rang brand"><?php echo ucfirst($brand['brand']); ?></label></div>
								</li>
                                <?php } ?>
                                </ul>
                            </div>
                        </div>
						<div class="panel list">
                            <div class="panel-heading"><h3 class="panel-title" data-toggle="collapse" data-target="#panelOne" aria-expanded="true">Sort By </h3></div>
                            <div class="panel-body collapse in" id="panelOne">
								<div class="radio disabled">
									<label><input type="radio" name="sorting" value="newest" <?php if(isset($_POST['sorting']) && ($_POST['sorting'] == 'newest' || $_POST['sorting'] == '')) {echo "checked";} ?> class="sort_rang sorting">Newest</label>
								</div> 
								<div class="radio">
									<label><input type="radio" name="sorting" value="low" <?php if(isset($_POST['sorting']) && $_POST['sorting'] == 'low') {echo "checked";} ?> class="sort_rang sorting">Price: Low to High</label>
								</div>
								<div class="radio">
									<label><input type="radio" name="sorting" value="high" <?php if(isset($_POST['sorting']) && $_POST['sorting'] == 'high') {echo "checked";} ?> class="sort_rang sorting">Price: High to Low</label>
								</div>								                              
                            </div>
                        </div>
                        <div class="panel list">
                            <div class="panel-heading"><h3 class="panel-title" data-toggle="collapse" data-target="#panelTwo" aria-expanded="true"> Material</h3></div>
                            <div class="panel-body collapse in" id="panelTwo">
                                <ul class="list-group">
                                <?php 
								foreach ($materials as $key => $material) {
                                    if(isset($_POST['material'])) {
                                        if(in_array($product->cleanString($material['material']),$_POST['material'])) {
                                            $materialCheck='checked="checked"';
										} else { 
											$materialCheck="";
										}
                                    }
                                ?>
                                    <li class="list-group-item">
                                        <div class="checkbox"><label><input type="checkbox" value="<?php echo $product->cleanString($material['material']); ?>" <?php echo @$materialCheck?>  name="material[]" class="sort_rang material"><?php echo ucfirst($material['material']); ?></label></div>
                                    </li>
                                <?php } ?>
                                </ul>
                            </div>
                        </div>
                        <div class="panel list">
                            <div class="panel-heading"><h3 class="panel-title" data-toggle="collapse" data-target="#panelFour" aria-expanded="true">Size</h3></div>
                            <div class="panel-body collapse in" id="panelFour">
                                <ul class="list-group">
                                    <?php foreach ($productSizes as $key => $productSize) {
                                        if(isset($_POST['size'])){
                                            if(in_array($productSize['size'],$_POST['size'])) {
                                                $sizeCheck='checked="checked"';
                                            } else {
												$sizeCheck="";
                                            }
                                        }
                                    ?>
                                    <li class="list-group-item">
                                        <div class="checkbox"><label><input type="checkbox" value="<?php echo $productSize['size']; ?>" <?php echo @$sizeCheck; ?>  name="size[]" class="sort_rang size"><?php echo $productSize['size']; ?></label></div>
                                    </li>
									<?php } ?>
                                </ul>
                            </div>
                        </div>
                    </aside>
                    <section class="col-lg-9 col-md-8">
                        <div class="row">
                            <div id="results"></div>
                        </div>
                    </section>
                </div>
				<input type="hidden" id="totalRecords" value="<?php echo $totalRecords; ?>">
            </form>
        </div>        
    </div>        
<script src="js/script.js"></script>		
<?php include('inc/footer.php');?>
