<!DOCTYPE html>
<html>

<head>
    <title>pation page</title>
    <link href="bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/pation.css" />
    <form method="POST" action="../php/coon_pation.php">
</head>

<body class="heading">
    <div class="pation">
        <img src="../img/Red and White Modern Blood Donor Illustration Charity  Logo/2.png" alt="Logo" class="logo">
        <div class="navbar">
            <div class="menu">
              <a href="../php/HomePage.php" class="z">الصفحه الرئيسيه</a>
      <a href="../php/contact number.php" class="z">ارقام التواصل</a>
      <a href="../php/messages.php" class="z">الرسائل</a>
            
            </div>
        </div>
    </div>

    <div class="info">
        <div class="info-co">
            <div class="form">

               <h1>تسجيل دخول المريض</h1>


                    <label for="id"></label>
                    <input type="text" id="id" name="national_id" placeholder=": الرقم القومي" />

                    <div class="location">

                        <label for="nearestPlace"></label>
                        <input type="text" class="location_1" placeholder="اقرب مكان" id="nearestPlace" name="nearest_location">

                        <label for="location"></label>
                        <select id="loCc" name="location" class="location_2">

                            <option selected disabled>العنوان</option>
                            <option value="القاهرة">القاهرة</option>
                            <option value="المنوفية">المنوفية</option>
                            <option value="القليوبية">القليوبية</option>
                            <option value="الدقهلية">الدقهلية</option>
                            <option value="المنصورة">المنصورة</option>
                            <option value="الأقصر">الأقصر</option>
                        </select>
                    </div>

                    <div class="money">

                        <label for="MOney"></label>
                        <input type="text" placeholder="السعر" class="MOney" id="MOney" name="price">

                        <label for="quantity"></label>
                        <select id="quantity" name="quantity">

                            <option selected disabled>الكميه</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="أكثر">أكثر</option>
                        </select>
                    </div>
<input list="blood_options" name="blood_type" placeholder="فصيلة الدم" required>
      <datalist id="blood_options">
        <option value="O+">
        <option value="O-">
        <option value="A+">
        <option value="A-">
        <option value="B+">
        <option value="B-">
        <option value="AB+">
        <option value="AB-">
      </datalist>
                    <label for="reason"></label>
                    <input type="text" placeholder="اسباب الاحتياج" name="reason" id="reason">

            
<button type="submit" id="btn">تسجيل الطلب</button>
                </form>
            </div>
        </div>
    </div>

<div class="map">
    <h3 class="Map">لمعرفه اقرب بنك دم</h3>
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d13816.769241319986!2d31.238928282617195!3d30.03134019999999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14584732119e2793%3A0x453fe76754c0176c!2z2YXYs9iq2LTZgdmJINin2YTZgti12LEg2KfZhNi52YrZhtmK!5e0!3m2!1sar!2seg!4v1724165697648!5m2!1sar!2seg" 
        width="600"height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
    </div>
    <script>

        let btn = document.getElementById('btn');
        btn.onclick = function() {
            window.alert('جاري تنفيذ طلبك');
        }

        document.getElementById("quantity").addEventListener("change", function() {
            const selectedQuantity = this.value;
            const priceInput = document.getElementById("MOney"); 

            if (selectedQuantity === "1") {
                priceInput.value = 50;
            } else if (selectedQuantity === "2") {
                priceInput.value = 100;
            } else if (selectedQuantity === "3") {
                priceInput.value = 150;
            } else if (selectedQuantity === "4") {
                priceInput.value = 200;
            } else if (selectedQuantity === "5") {
                priceInput.value = 250;
            } else if (selectedQuantity === "أكثر") {
                priceInput.value = "يرجى التواصل لمعرفة السعر";
            } else {
                priceInput.value = "غير متوفر";
            }
        });

        document.getElementById("loCc").addEventListener("change", function() {
            const selectedLocation = this.value; 
            const nearestPlaceInput = document.getElementById("nearestPlace");

            let nearestPlace = "غير متوفر"; 

            if (selectedLocation === "القاهرة") {
                nearestPlace = "مستشفى قصر العيني";
            } else if (selectedLocation === "المنوفية") {
                nearestPlace = "مستشفى شبين الكوم";
            } else if (selectedLocation === "القليوبية") {
                nearestPlace = "مستشفى بنها التعليمي";
            } else if (selectedLocation === "الدقهلية") {
                nearestPlace = "مستشفى الطوارئ بالمنصورة";
            } else if (selectedLocation === "المنصورة") {
                nearestPlace = "مستشفى الجامعة";
            } else if (selectedLocation === "الأقصر") {
                nearestPlace = "مستشفى الأقصر الدولي";
            }

            nearestPlaceInput.value = nearestPlace;
        });
    </script>

</body>

</html>
