<?php
if (isset($_POST['submit'])) {
        $file = $_FILES['file'];
        print_r($file);
        $fileName = $_FILES['file']['name'];
        $fileTmpName = $_FILES['file']['tmp_name'];
        $fileSize = $_FILES['file']['size'];
        $fileError = $_FILES['file']['error'];
        $fileType = $_FILES['file']['type'];

        $fileExt = explode('.', $fileName);
        $fileActualExt = strtolower(end($fileExt));

        $allowed = array('offer');
        if (in_array($fileActualExt, $allowed)) {
                if ($fileError === 0) {
                   if ($fileSize < 500000) {
                       $fileNameNew = uniqid('', true).".".$fileActualExt;
                       $fileDestination = 'uploads/'.$fileNameNew;
                       move_uploaded_file($fileTmpName, $fileDestination);
                       header("Location: index4.php?uploadsuccess");
                       
                       
                       
$url = "https://maker.ifttt.com/trigger/php_payload/json/with/key/{key}";

$curl = curl_init();
curl_setopt($curl, CURLOPT_URL, $url);
curl_setopt($curl, CURLOPT_HTTPHEADER, array('Accept: application/json', 'Content-Type: application/json'));
curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);

$data = <<<DATA
{
  "new offer": "$fileNameNew"
}
DATA;

curl_setopt($curl, CURLOPT_POSTFIELDS, $data);

$resp = curl_exec($curl);
curl_close($curl);

echo $resp;
                 
                 
                   } else {
                                echo "File size is too big.";
                        }
                } else {
                        echo "An error occured.";
                }
        } else {
                echo "Choose supported offer file.";
        }

}
