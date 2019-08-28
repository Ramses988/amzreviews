    function successNoty(msg) {
        new Noty({
            theme: 'relax',
            text: "<span class='fa fa-lg fa-check'></span> &nbsp;"+msg,
            type: 'success',
            layout: "topRight",
            timeout: 5000
        }).show();
    }