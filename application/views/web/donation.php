<!-- Header Start -->
<div class="container-fluid bg-breadcrumb">
    <div class="container text-center py-5" style="max-width: 900px;">
        <h3 class="text-white display-3 mb-4">Make a Donation</h1>
            <ol class="breadcrumb justify-content-center mb-0">
                <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                <li class="breadcrumb-item active text-white">Make a Donation</li>
            </ol>
    </div>
</div>
<!-- Header End -->



<!-- Donation Section Start -->
<div class="container py-5">
    <h2 class="text-center mb-4">Make a Donation</h2>
    <div class="row justify-content-center">
        <div class="col-md-8">
            <form enctype="multipart/form-data" action="<?= base_url('web/Donation/add_new_donation') ?>" method="POST">
                <!-- Projects Dropdown -->
                <div class="mb-3" style="width: auto;">
                    <label for="projectName" class="form-label">Project Name</label>
                    <select class="form-select" id="project_id" name="project_id">
                        <?php if($flag){?>
                        <option value="<?php echo $project['uid']?>" selected disabled><?php echo $project['project_title']?></option>
                        <?php }else{?>
                            <option selected value="general-donation">general-donation</option>
                            <?php foreach($project as $p){?>
                                
                                <option value="<?php echo $p['uid']?>"><?php echo $p['project_title']?></option>
                            <?php }?>   
                         <?php }?>
                    </select>
                </div>

                <!-- Full Name -->
                <div class="mb-3" style="width: auto;">
                    <label for="fullName" class="form-label">Full Name</label>
                    <input type="text" class="form-control" id="fullName" name="name">
                </div>

                <!-- Email ID -->
                <div class="mb-3" style="width: auto;">
                    <label for="email" class="form-label">Email ID</label>
                    <input type="email" class="form-control" id="email" name="email">
                </div>

                <!-- Phone Number -->
                <div class="mb-3" style="width: auto;">
                    <label for="" class="form-label">Phone Number</label>
                    <input type="tel" class="form-control" id="" name="phone" required>
                </div>

                <!-- PAN Card -->
                <div class="mb-3" style="width: auto;">
                    <label for="" class="form-label">PAN Card</label> 
                    <input type="text" class="form-control" id="" name="pan" required>
                </div>

                <!-- Donation Address -->
                <div class="mb-3" style="width: auto;">
                    <label for="" class="form-label">Address</label>
                    <textarea type="number" class="form-control" id="" name="address" required></textarea>
                </div>

                <!-- Donation Amount -->
                <div class="mb-3" style="width: auto;">
                    <label for="" class="form-label">Pin Code</label>
                    <input type="number" class="form-control" id="" name="pin" required>
                </div>              

                <!-- Donation Amount -->
                <div class="mb-3" style="width: auto;">
                    <label for="" class="form-label">Donation Amount</label>
                    <input type="number" class="form-control" id="" name="amount" required>
                </div>

                <!-- Submit Button -->
                <button type="submit" class="btn btn-primary" style="color: white;">Donate Now</button>
            </form>
        </div>
    </div>
</div>
<!-- Donation Section End -->