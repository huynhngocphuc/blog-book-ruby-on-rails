function previewImage(event) {
  var input = event.target;
  var reader = new FileReader();

  reader.onload = function () {
    var imagePreview = document.getElementById("image_preview");
    var imageData = document.getElementById("image_data");
    imagePreview.src = reader.result;
    imagePreview.style.display = "block";
    imageData.style.display = "none";
  };

  reader.readAsDataURL(input.files[0]);
}
