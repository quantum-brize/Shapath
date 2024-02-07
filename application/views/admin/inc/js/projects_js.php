<script>
    $(document).on('change', 'input[name="project_img[]"]', function (e) {
        console.log(1)
        var files = e.target.files;
        $('#projectPrev').html(''); // Clear existing previews

        for (var i = 0; i < files.length; i++) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#projectPrev').append(`<img src="${e.target.result}" height="200" id="project_img"/>`);
            };

            reader.readAsDataURL(files[i]);
        }
    });

</script>