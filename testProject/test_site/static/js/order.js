const modalOverlay = document.getElementById('modalOverlay');
const closeButton = document.getElementById('closeButton');
const confirmButton = document.getElementById('confirmButton');

function pushOrder() {
    confirmButton.addEventListener('click', function () {
        modalOverlay.style.display = 'flex';
    });

    closeButton.addEventListener('click', function () {
        modalOverlay.style.display = 'none';
    });

    window.addEventListener('click', function (event) {
        if (event.target === modalOverlay) {
            modalOverlay.style.display = 'none';
        }
    });
}

document.addEventListener('DOMContentLoaded', function () {
    pushOrder();
});