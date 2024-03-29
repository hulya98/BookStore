﻿$(function () {
    $("#fileupload").change(function () {
        $("#dvPreview").html("");
        var regex = /^([a-zA-Z0-9\s_\\.\-:])+(.jpg|.jpeg|.gif|.png|.bmp)$/;
        if (regex.test($(this).val().toLowerCase())) {
            if (typeof (FileReader) != "undefined") {
                $("#dvPreview").show();
                $("#dvPreview").append("<img />");
                var reader = new FileReader();
                reader.onload = function (e) {
                    $("#dvPreview img").attr("src", e.target.result);
                    $("#dvPreview img").attr("style", "height:120px;width: 100px");
                }
                reader.readAsDataURL($(this)[0].files[0]);
            } else {
                alert("This browser does not support FileReader.");
            }
        } else {
            alert("Please upload a valid image file.");
        }
    });
});
