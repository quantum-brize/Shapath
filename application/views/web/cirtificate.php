<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Experience Certificate Generator</title>
  <!-- <link rel="stylesheet" href="styles.css"> -->
  <link rel="stylesheet" href="<?=base_url()?>assets/css/styles_cirtificate.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

    <div class="toolbar no-print">
      <button class="btn btn-info" onclick="window.print()">
        Print Certificate
      </button>
      <button class="btn btn-info" id="downloadPDF">Download PDF</button>
      <!-- <a  href="<?= base_url('web/Load/download_pdf')?>" class="btn btn-info">Download PDF</a> -->
    </div>
    <div class="cert-container print-m-0">
      <div id="content2" class="cert">
        <img
          src="https://edgarsrepo.github.io/certificate.png"
          class="cert-bg"
          alt=""
        />
        <!-- <img src="data:image/png;base64,{{ base64_encode(file_get_contents( 'https://edgarsrepo.github.io/certificate.png' )) }}">  -->
        <div class="cert-content" style="margin-top: 10%;">
          <h1 class="other-font">Zcc Computer Education</h1>
          <!-- <div class="row"> -->
              <div style="font-size: 10px; font-weight: bold; margin-top: 50px;">
                  <span style="margin-left:150%;">CIN:</span> <span>U85300HR2023NPL109027</span>
              <!-- </div> -->
              <!-- <div class="col-sm-10"> -->
                  <span style="font-size: 15px;">[An Institute of Computer And IT education]</span><br>
                  <span style="font-size: 15px; font-weight: bold">Regd. Under Ministry of Affairs By Govt. of India</span><br>
                  <span style="font-size: 20px; font-weight: bold">RAn IAF ISO 9001:2015 Certified</span><br>
                  <span style="font-size: 15px; font-weight: bold; margin-left: 120px; margin-right: 120px;">Website: www.zcceducation.com</span>
              <!-- </div> -->
              <!-- <div class="col-sm-1" style="font-size: 10px; font-weight: bold; margin-top: 50px;"> -->
                  <span>S.NO : 101</span>
              <!-- </div> -->
          </div>
            <h3 style="color:white;background: #2955a0;font-weight:bold; font-size: 25px;"><center>CERTIFICATE/ DIPLOMA</center></h3>
          
            <h1 class="other-font">This Is Certify That</h1>
            <!-- <div class="row"> -->
              <!-- <div class="col-sm-6"> -->
                <span style="font-size: 15px; font-weight: bold; margin-left: -140px">Registration Number:</span>
                <br><br>
              <!-- </div> -->
              <!-- <div class="col-sm-6"> -->
                <img src="abc.jpg" alt="" style="border:1px solid;">
              <!-- </div> -->
            <!-- </div> -->
            <!-- <div class="row"> -->
              <span style="font-size: 15px; font-weight: bold;">Mr./Ms./Mrs......................................................................................D.O.B.......................................</span>
            <!-- </div> -->
            <br><br>
            <!-- <div class="row"> -->
              <span style="font-size: 15px; font-weight: bold;">D/o,S/o,S/h.......................................................Mother's Name.............................................</span>
            <!-- </div> -->
            <br><br>
            <!-- <div class="row"> -->
              <span style="font-size: 15px; font-weight: bold;">Course Duration:..................................................From............................To........................</span>
            <!-- </div> -->
            <br><br>
            <!-- <div class="row"> -->
              <span style="font-size: 15px; font-weight: bold;">He/She Has Passed The Final ExaminationConducted By (Exam Winng) In:.................</span>
            <!-- </div> -->
            <br><br>
            <!-- <div class="row"> -->
              <span style="font-size: 15px; font-weight: bold;">In Our Authorised Study Centre:..........................................................................................</span>
            <!-- </div> -->
            <br><br>
            <!-- <div class="row"> -->
              <span style="font-size: 15px; font-weight: bold;">He/She Has passed The Examination With:......................................Grade:......................</span>
            <!-- </div> -->
            <br><br>
            <span style="font-size: 17px; font-weight: bold">You may also visit to verify your result https://www.zcceducation.com/</span><br><br>
            <span style="font-size: 20px; font-weight: bold">On The Recomendation Of The Board Of Examiners</span><br><br>

          <small
            >Completion of the Azimuth Check and review of the Azimuth Check
            recommendations in ArmyFit is worth 1.0 hours in the Electronic
            Based Distance Learning (EBDL) program for USAR and ARNG Soldiers.
            For more information on the EBDL, see your unit training NCO.</small
          >
          <div class="bottom-txt">
            <span>G-1 DAPE-ARR-SF</span>
            <span>Completed on: April 3, 2020</span>
          </div>
        </div>
      </div>
    </div>

    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.5/jspdf.min.js"></script>
  <script src="script.js"></script>
</body>
</html>
