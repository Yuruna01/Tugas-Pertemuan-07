<?php

class mahasiswa extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('mahasiswa_model');
    }
    function index()
    {
        $data['mahasiswa'] = $this->mahasiswa_model->get_mahasiswa();
        $this->load->view('mahasiswa_view', $data);
    }
    function delete()
    {
        $NIM = $this->uri->segment(3);
        $this->mahasiswa_model->delete($NIM);
        redirect('mahasiswa');
    }
}