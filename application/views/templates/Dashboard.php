<!-- start page content wrapper-->
<div class="page-content-wrapper">
    <!-- start page content-->
    <div class="page-content">
        <!-- Start Row -->
        <div class="row row-cols-1 row-cols-lg-2 row-cols-xl-5">
            <div class="col">
                <div class="card radius-10">
                    <div class="card-body">
                        <div class="mx-auto widget-icon bg-light-dark text-dark">
                            <i class="bi bi-files"></i>
                        </div>
                        <div class="text-center mt-3">
                            <h3 class="text-dark mb-1"><?php echo count($files); ?></h3>
                            <p class="text-muted mb-4">Jumlah File</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col">
                <div class="card radius-10">
                    <div class="card-body">
                        <div class="mx-auto widget-icon bg-light-dark text-dark">
                            <i class="bi bi-memory"></i>
                        </div>
                        <div class="text-center mt-3">
                            <h3 class="text-dark mb-1">
                                <?php
                                $size_used = 0;

                                foreach ($files as $file) {
                                    $size_used += $file->ukuran;
                                }

                                if ($size_used > 1000) {
                                    echo round($size_used / 1000, 2) . ' MB';
                                } else {
                                    echo $size_used . ' KB';
                                }

                                ?>
                            </h3>
                            <p class="text-muted mb-4">Penyimpanan Digunakan</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--end row-->

        <div>
            <button type="button" class="btn btn-primary float-end  mt-3" data-bs-toggle="modal" data-bs-target="#exampleModal">Upload File</button>
        </div>

        <table class="table table-hover">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Nama File</th>
                    <th>Format File</th>
                    <th>Ukuran</th>
                    <th>Diubah Tanggal</th>
                    <th colspan="3">Aksi</th>
                </tr>
            </thead>
            <tbody>

                <?php
                $i = 1;
                foreach ($files as $file) : ?>
                    <tr>
                        <td><?php echo $i++ . '.'; ?></td>
                        <td><?php echo mb_strimwidth($file->nama_file, 0, 60, "..."); ?></td>
                        <td><?php echo $file->format_file; ?></td>
                        <td><?php
                            if ($file->ukuran > 1000) {
                                echo round($file->ukuran / 1000, 2) . ' MB';
                            } else {
                                echo $file->ukuran . ' KB';
                            }
                            ?>
                        </td>
                        <td><?php echo $file->diubah_tanggal; ?></td>
                        <td>
                            <form action="download" method="post">
                                <input type="hidden" name="path" id="path" value="<?php echo $file->path; ?>">
                                <button type="submit" class="btn btn-sm btn-secondary">Unduh</button>
                            </form>
                        </td>
                        <td>
                            <?php echo anchor('fi_drive/file/' . $file->id_file, '<button class="btn btn-sm btn-success">Lihat</button>'); ?>
                        </td>
                        <td onclick="javascript: confirm('Hapus file?');">
                            <?php echo anchor('fi_drive/delete/' . $file->id_file, '<button class="btn btn-sm btn-danger">Hapus</button>'); ?>
                        </td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </div>
    <!-- end page content-->

    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Upload File</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <?php echo form_open_multipart('fi_drive/add_file'); ?>
                    <div class="mb-3">
                        <label for="file" class="form-label">Upload File</label>
                        <input class="form-control" type="file" name="file" id="file">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Upload</button>
                </div>
                <?php echo form_close(); ?>
            </div>
        </div>
    </div>
</div>
<!--end page content wrapper-->