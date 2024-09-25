$(document).on("click", ".open-modal-link", function (e) {
  e.preventDefault();
  let path = $(this).data("path");
  $.ajax({
    url: path,
    type: "GET",
    dataType: "html",
    success: function (data) {
      console.log(data);
      $("#modal-content").html(data);
    },
    error: function (xhr, status, error) {},
  });
});
