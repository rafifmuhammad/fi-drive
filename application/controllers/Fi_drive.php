<?php

class Fi_drive extends CI_Controller
{

    public function index()
    {
        $this->load->model('M_drive');
        $data['files'] = $this->M_drive->get_files();

        $this->load->view('templates/Sidebar');
        $this->load->view('templates/Header');
        $this->load->view('templates/Dashboard', $data);
        $this->load->view('templates/Footer');
    }

    public function file($id_file)
    {
        $this->load->model('M_drive');
        $where = ['id_file' => $id_file];
        $data['file'] = $this->M_drive->get_single_file($where, 'tb_files');

        $this->load->view('file_page/Sidebar_file');
        $this->load->view('file_page/Header_file');
        $this->load->view('file_page/Dashboard_file', $data);
        $this->load->view('file_page/Footer_file');
    }

    public function add_file()
    {
        $file = $_FILES['file'];

        if ($file == '') {
        } else {
            $config['upload_path'] = './upload';
            $config['allowed_types'] = 'jpg|png|gif|pdf|rar|zip';
            $config['max_size'] = 1024 * 10000;

            $this->load->library('upload', $config);
            if (!$this->upload->do_upload('file')) {
                echo 'Upload Gagal';
            } else {
                $nama_file = $this->upload->data('file_name');
                $format_file = explode('.', $nama_file);
                $path = $this->upload->data('full_path');
                $ukuran_file = $this->upload->data('file_size');
                $diubah_tanggal = date("Y/m/d");
            }
        }

        $data = array(
            'nama_file' => $nama_file,
            'format_file' => $format_file[1],
            'ukuran' => $ukuran_file,
            'path' => $path,
            'diubah_tanggal' => $diubah_tanggal,
        );

        $this->M_drive->input_file($data, 'tb_files');
        redirect('fi_drive/index');
    }

    public function delete($id_file)
    {
        $where = ['id_file' => $id_file];
        $data = $this->M_drive->get_single_file($where, 'tb_files');

        $this->M_drive->delete_file($where, 'tb_files');
        delete_files($data->path);
        redirect('fi_drive/index');
    }

    public function download()
    {
        $path = $this->input->post('path');

        force_download($path, NULL);
        redirect('fi_drive/index');
    }
}
