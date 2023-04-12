<!-- start page content wrapper-->
<div class="page-content-wrapper">

    <!-- start page content-->
    <div class="page-content">
        <div class="card">
            <div class="card-body">
                <div class="border p-3 rounded">
                    <h6 class="mb-0 text-uppercase">Deskripsi File</h6>
                    <hr>
                    <form class="row g-3" action="../download" method="post">
                        <input type="hidden" name="path" id="path" value="<?php echo $file[0]->path; ?>">
                        <div class="col-12">
                            <label class="form-label">Nama File</label>
                            <input type="text" class="form-control" disabled value="<?php echo $file[0]->nama_file; ?>">
                        </div>
                        <div class="col-12">
                            <label class="form-label">Format File</label>
                            <input type="text" class="form-control" disabled value="<?php echo $file[0]->format_file; ?>">
                        </div>
                        <div class="col-12">
                            <label class="form-label">Ukuran</label>
                            <input type="text" class="form-control" disabled value="<?php echo ($file[0]->ukuran > 1000) ? round($file[0]->ukuran / 1000, 2) . ' MB' :  $file[0]->ukuran . ' KB'; ?>">
                        </div>
                        <div class="col-12">
                            <label class="form-label">Diubah Tanggal</label>
                            <input type="date" class="form-control" disabled value="<?php echo $file[0]->diubah_tanggal; ?>">
                        </div>
                        <div class="col-12 mt-5">
                            <div class="d-grid">
                                <button type="submit" class="btn btn-primary">Unduh File</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- end page content-->

</div>
<!--end page content wrapper-->