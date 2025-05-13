</div> <!-- end .container -->

<footer class="bg-dark text-white mt-5 pt-4 pb-3">
    <div class="container">
        <div class="row">
            <div class="col-md-6 mb-3 mb-md-0">
                <h5 class="mb-3 fw-bold"><i class="bi bi-shop me-2"></i>POS App</h5>
                <p class="mb-0">
                    Sistem point of sale dan manajemen inventaris yang efisien dan handal.
                    Dirancang untuk memudahkan pengelolaan produk dan supplier bagi
                    bisnis Anda.
                </p>
            </div>
            <div class="col-md-3 mb-3 mb-md-0">
                <h6 class="text-uppercase fw-bold mb-3">Bantuan</h6>
                <ul class="list-unstyled mb-0">
                    <li class="mb-2"><a href="#" class="text-decoration-none text-light"><i
                                class="bi bi-question-circle me-1"></i> Panduan Pengguna</a></li>
                    <li class="mb-2"><a href="#" class="text-decoration-none text-light"><i
                                class="bi bi-life-preserver me-1"></i> Dukungan Teknis</a></li>
                    <li class="mb-2"><a href="#" class="text-decoration-none text-light"><i
                                class="bi bi-card-checklist me-1"></i> FAQ</a></li>
                </ul>
            </div>
            <div class="col-md-3">
                <h6 class="text-uppercase fw-bold mb-3">Kontak</h6>
                <p class="mb-0 small">
                    <i class="bi bi-envelope me-1"></i> aryajati45@gmail.com<br>
                    <i class="bi bi-telephone me-1"></i>(+62)85123712580<br>
                    <i class="bi bi-geo-alt me-1"></i> Kediri, Indonesia
                </p>
            </div>
        </div>

        <hr class="my-3 bg-secondary">

        <div class="row align-items-center">
            <div class="col-md-8 text-md-start text-center small text-muted">
                <span>&copy; 2025 POS App - Arya Lambang. All rights reserved.</span>
            </div>
            <div class="col-md-4 mt-3 mt-md-0">
                <ul class="list-inline text-md-end text-center mb-0">
                    <li class="list-inline-item">
                        <a href="#" class="text-decoration-none text-light fs-5">
                            <i class="bi bi-facebook"></i>
                        </a>
                    </li>
                    <li class="list-inline-item">
                        <a href="#" class="text-decoration-none text-light fs-5">
                            <i class="bi bi-instagram"></i>
                        </a>
                    </li>
                    <li class="list-inline-item">
                        <a href="#" class="text-decoration-none text-light fs-5">
                            <i class="bi bi-linkedin"></i>
                        </a>
                    </li>
                    <li class="list-inline-item">
                        <a href="#" class="text-decoration-none text-light fs-5">
                            <i class="bi bi-github"></i>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</footer>

<!-- Bootstrap Bundle JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<!-- Custom Javascript -->
<script>
    // Enable tooltips everywhere
    var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
    var tooltipList = tooltipTriggerList.map(function(tooltipTriggerEl) {
        return new bootstrap.Tooltip(tooltipTriggerEl)
    })

    // Add animation to alerts
    document.addEventListener('DOMContentLoaded', function() {
        // Auto dismiss alerts after 5 seconds
        setTimeout(function() {
            var alerts = document.querySelectorAll('.alert:not(.alert-permanent)');
            alerts.forEach(function(alert) {
                var bsAlert = new bootstrap.Alert(alert);
                bsAlert.close();
            });
        }, 5000);
    });
</script>
</body>

</html>