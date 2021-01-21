
$(document).ready(function() {
    $('#search').on('keyup', function() {
        $.ajax({
            type: 'POST',
            url: 'api/search.php',
            data: {
                search: $(this).val()
            },
            cache: false,
            success: function(data) {
                $('#tampil').html(data);
            }
        });
    });
});